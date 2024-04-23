const pool = require("../db");

const addUserToMonitor = async (req, res, next) => {
  try {

    const { correo } = req.body;

    const usuario_id = req.user;

    const correoSanatized = correo.trim().toLocaleLowerCase();

    const userTargetQuery = await pool.query("SELECT id FROM usuario WHERE correo = $1", [correoSanatized]);

    if (userTargetQuery.rows.length === 0) {
      throw new Error("user-not-exist");
    }

    const usuarioTargetId = userTargetQuery.rows[0].id;

    const relationQuery = await pool.query(
      "SELECT * FROM profesor_aprendiz WHERE profesor_id = $1 AND aprendiz_id = $2",
      [usuario_id, usuarioTargetId]
    );

    if (relationQuery.rows.length > 0) {
      throw new Error("alredy-exist");
    }
    

    
    const result = await pool.query(
      `INSERT INTO public.profesor_aprendiz(profesor_id, aprendiz_id) VALUES ($1, $2)`,
      [usuario_id, usuarioTargetId]
    );
    return res.sendStatus(204);
  } catch (error) {
    next(error);
  }
};

const removeUserToMonitor = async (req, res, next) => {
  try {

    const { correo } = req.body;

    const usuario_id = req.user;

    const correoSanatized = correo.trim().toLocaleLowerCase();

    const userTargetQuery = await pool.query("SELECT id FROM usuario WHERE correo = $1", [correoSanatized]);

    if (userTargetQuery.rows.length === 0) {
      throw new Error("user-not-exist");
    }

    const usuarioTargetId = userTargetQuery.rows[0].id;

      
    await pool.query(
      `DELETE FROM public.profesor_aprendiz
        WHERE profesor_id = $1 AND aprendiz_id =  $2`,
      [usuario_id, usuarioTargetId]
    );

    return res.sendStatus(204);
  } catch (error) {
    next(error);
  }
};

const getUsersMonitorData = async (req, res, next) => {
  try {

    const usuario_id = req.user;

    const result = await pool.query(`
      SELECT PA.*, U.correo, U.nombre, U.apellido, U.usuario_metadatos_id, UM.*
      FROM profesor_aprendiz PA
      INNER JOIN usuario U ON U.id = PA.aprendiz_id
      INNER JOIN usuario_metadatos UM ON UM.id = U.usuario_metadatos_id
      WHERE PA.profesor_id = $1;
    `, [usuario_id]);

    res.json(result.rows);
  } catch (error) {
    next(error);
  }
};

const getAllData = async (req, res, next) => {
  try {

    console.log("nigga");
    const usuario_id = req.user;

    const { usuario_target_id } = req.params;

    const authorizationQuery = await pool.query(
      `SELECT * FROM profesor_aprendiz WHERE profesor_id = $1 AND aprendiz_id = $2`,
      [usuario_id, usuario_target_id]
    );

    if (authorizationQuery.length === 0) {
      throw new Error("EAM001: Not authorized");
    }

    const usuarioQuery = pool.query('SELECT * FROM usuario WHERE id = $1', [usuario_target_id]);

    const vocablosQuery = await pool.query(`SELECT * FROM vocablo`);

    const temasDataObj = {};

    for (const vocablo of vocablosQuery.rows) {
      if (temasDataObj[vocablo.tema_id]) {
        temasDataObj[vocablo.tema_id].vocablos_counter += 1;
      } else {
        temasDataObj[vocablo.tema_id] = {
          vocablos_counter: 1,
        }
      }
    }

    const temasQuery = await pool.query(`SELECT * FROM tema`);

    for (const tema of temasQuery.rows) {
      if (temasDataObj[tema.id]) {
        temasDataObj[tema.id].data = tema;
        temasDataObj[tema.id].tema_id = tema.id;
      } else {
        temasDataObj[tema.id] = {
          data: tema,
          tema_id: tema.id,
        };
      }
    }

    const vocablosVistosQuery = await pool.query(`SELECT * FROM vocablo_visto WHERE usuario_id = $1`, [usuario_target_id]);
    const existTemaVocabloVistoObj = {};
    
    for (const vv of vocablosVistosQuery.rows) {

      if (existTemaVocabloVistoObj[`${vv.tema_id}${vv.vocablo_id}`]) {
        continue;
      }

      if (temasDataObj[vv.tema_id]) {
        if (temasDataObj[vv.tema_id].vocablos_vistos_counter) {
          temasDataObj[vv.tema_id].vocablos_vistos_counter += 1;
        } else {
          temasDataObj[vv.tema_id].vocablos_vistos_counter = 1;
        }
      } else {
        temasDataObj[vv.tema_id] = {
          vocablos_vistos_counter: 1
        };
      }

      existTemaVocabloVistoObj[`${vv.tema_id}${vv.vocablo_id}`] = true;
    }

    const vocablosCorrectosQuery = await pool.query(`SELECT * FROM vocablo_correcto WHERE usuario_id = $1`, [usuario_target_id]);
    const existTemaVocabloCorrectoObj = {};


    for (const vc of vocablosCorrectosQuery.rows) {

      if (existTemaVocabloCorrectoObj[`${vc.tema_id}${vc.vocablo_id}`]) {
        continue;
      }

      if (!vc.correcto) {
        continue;
      }
      
      if (temasDataObj[vc.tema_id]) {
        if (temasDataObj[vc.tema_id].vocablos_correctos_counter) {
          temasDataObj[vc.tema_id].vocablos_correctos_counter += 1;
        } else {
          temasDataObj[vc.tema_id].vocablos_correctos_counter = 1;
        }
      } else {

        temasDataObj[vc.tema_id] = {
          vocablos_correctos_counter: 1
        };
      }

      existTemaVocabloCorrectoObj[`${vc.tema_id}${vc.vocablo_id}`] = true;
    }

    const practicasQuery = await pool.query(`SELECT * FROM practica WHERE usuario_id = $1`, [usuario_target_id]);



    const _7Days = 1000*60*60*24*7;
    const last7DaysTime = new Date().getTime() - _7Days;
    let practicas_last_7days = 0;
    const  practicas_realizadas = practicasQuery.rows.length;
    let total_consultas = 0;
    let total_correctas = 0;
    
    for (const practica of practicasQuery.rows) {

      total_consultas += practica.total_consultas;
      total_correctas += practica.total_correctas;

      const practicaTime = new Date(practica.fecha).getTime();

      if (practicaTime >= last7DaysTime) {
        practicas_last_7days += 1;
      }

      if (temasDataObj[practica.tema_id]) {
        if (temasDataObj[practica.tema_id].practicas_hechas) {
          temasDataObj[practica.tema_id].practicas_hechas += 1;
        } else {
          temasDataObj[practica.tema_id].practicas_hechas = 1;
        }

        if (temasDataObj[practica.tema_id].total_consultas) {
          temasDataObj[practica.tema_id].total_consultas += practica.total_consultas;
        } else {
          temasDataObj[practica.tema_id].total_consultas = practica.total_consultas;
        }

        if (temasDataObj[practica.tema_id].total_correctas) {
          temasDataObj[practica.tema_id].total_correctas += practica.total_correctas;
        } else {
          temasDataObj[practica.tema_id].total_correctas = practica.total_correctas;
        }
      } else {

        temasDataObj[practica.tema_id] = {
          practicas_hechas: 1,
          total_consultas: practica.total_consultas,
          total_correctas: practica.total_correctas,
        };
      }
      
    }

    const gradoQuery = await pool.query(`SELECT * FROM grado`);
    const grados = gradoQuery.rows;
    
    const usuario = (await usuarioQuery).rows[0];

    res.json({
      usuario,
      temas_data: Object.values(temasDataObj),
      practicas_last_7days,
      practicas_realizadas,
      total_consultas, 
      total_correctas,
      total_incorrectas: total_consultas - total_correctas,
      grados,
    });
  } catch (error) {
    next(error);
  }

}

const getDataByGrado = async (req, res, next) => {
  try {

    const usuario_id = req.user;

    const { usuario_target_id } = req.params;

    const {grado, start, end} = req.query;

    const grado_id = Number(grado);


    const authorizationQuery = await pool.query(
      `SELECT * FROM profesor_aprendiz WHERE profesor_id = $1 AND aprendiz_id = $2`,
      [usuario_id, usuario_target_id]
    );

    if (authorizationQuery.length === 0) {
      throw new Error("EAM002: Not authorized");
    }

    const gtvQuery = await pool.query(`SELECT * FROM grado_tema_vocablo`);

    const temasDataObj = {};

    for (const gtv of gtvQuery.rows) {

      if (gtv.grado_id !== grado_id) {
        continue;
      }

      if (temasDataObj[gtv.tema_id]) {
        temasDataObj[gtv.tema_id].vocablos_counter += 1;
      } else {
        temasDataObj[gtv.tema_id] = {
          vocablos_counter: 1,
        }
      }
    }

    const temasQuery = await pool.query(`SELECT * FROM tema`);

    for (const tema of temasQuery.rows) {
      if (temasDataObj[tema.id]) {
        temasDataObj[tema.id].data = tema;
        temasDataObj[tema.id].tema_id = tema.id;
      } else {
        temasDataObj[tema.id] = {
          data: tema,
          tema_id: tema.id,
        };
      }
    }

    const vocablosVistosQuery = await pool.query(`SELECT * FROM vocablo_visto WHERE usuario_id = $1`, [usuario_target_id]);
    const existTemaVocabloVistoObj = {};
    
    for (const vv of vocablosVistosQuery.rows) {

      if (vv.grado_id !== grado_id) {
        continue;
      }

      if (existTemaVocabloVistoObj[`${vv.tema_id}${vv.vocablo_id}`]) {
        continue;
      }

      if (temasDataObj[vv.tema_id]) {
        if (temasDataObj[vv.tema_id].vocablos_vistos_counter) {
          temasDataObj[vv.tema_id].vocablos_vistos_counter += 1;
        } else {
          temasDataObj[vv.tema_id].vocablos_vistos_counter = 1;
        }
      } else {
        temasDataObj[vv.tema_id] = {
          vocablos_vistos_counter: 1
        };
      }

      existTemaVocabloVistoObj[`${vv.tema_id}${vv.vocablo_id}`] = true;
    }

    const vocablosCorrectosQuery = await pool.query(`SELECT * FROM vocablo_correcto WHERE usuario_id = $1`, [usuario_target_id]);
    const existTemaVocabloCorrectoObj = {};


    for (const vc of vocablosCorrectosQuery.rows) {

      if (vc.grado_id !== grado_id) {
        continue;
      }
      
      if (existTemaVocabloCorrectoObj[`${vc.tema_id}${vc.vocablo_id}`]) {
        continue;
      }

      if (!vc.correcto) {
        continue;
      }
      
      if (temasDataObj[vc.tema_id]) {
        if (temasDataObj[vc.tema_id].vocablos_correctos_counter) {
          temasDataObj[vc.tema_id].vocablos_correctos_counter += 1;
        } else {
          temasDataObj[vc.tema_id].vocablos_correctos_counter = 1;
        }
      } else {

        temasDataObj[vc.tema_id] = {
          vocablos_correctos_counter: 1
        };
      }

      existTemaVocabloCorrectoObj[`${vc.tema_id}${vc.vocablo_id}`] = true;
    }

    const practicasQuery = await pool.query(`SELECT * FROM practica WHERE usuario_id = $1 AND grado_id = $2`, [usuario_target_id, grado_id]);



    const _7Days = 1000*60*60*24*7;
    const last7DaysTime = new Date().getTime() - _7Days;
    let practicas_last_7days = 0;
    const  practicas_realizadas = practicasQuery.rows.length;
    let total_consultas = 0;
    let total_correctas = 0;
    
    for (const practica of practicasQuery.rows) {

      total_consultas += practica.total_consultas;
      total_correctas += practica.total_correctas;

      const practicaTime = new Date(practica.fecha).getTime();

      if (practicaTime >= last7DaysTime) {
        practicas_last_7days += 1;
      }
      
      if (temasDataObj[practica.tema_id]) {
        if (temasDataObj[practica.tema_id].practicas_hechas) {
          temasDataObj[practica.tema_id].practicas_hechas += 1;
        } else {
          temasDataObj[practica.tema_id].practicas_hechas = 1;
        }

        if (temasDataObj[practica.tema_id].total_consultas) {
          temasDataObj[practica.tema_id].total_consultas += practica.total_consultas;
        } else {
          temasDataObj[practica.tema_id].total_consultas = practica.total_consultas;
        }

        if (temasDataObj[practica.tema_id].total_correctas) {
          temasDataObj[practica.tema_id].total_correctas += practica.total_correctas;
        } else {
          temasDataObj[practica.tema_id].total_correctas = practica.total_correctas;
        }
      } else {

        temasDataObj[practica.tema_id] = {
          practicas_hechas: 1,
          total_consultas: practica.total_consultas,
          total_correctas: practica.total_correctas,
        };
      }
      
    }

    const gradoQuery = await pool.query(`SELECT * FROM grado`);
    const grados = gradoQuery.rows;
    
    res.json({
      temas_data: Object.values(temasDataObj),
      practicas_last_7days,
      practicas_realizadas,
      total_consultas, 
      total_correctas,
      total_incorrectas: total_consultas - total_correctas,
      grados
    });
    
  } catch (error) {
    next(error);
  }

}

const getDataByRange = async (req, res, next) => {
  try {

    const usuario_id = req.user;

    const { usuario_target_id } = req.params;

    const {grado, start, end} = req.query;

    const authorizationQuery = await pool.query(
      `SELECT * FROM profesor_aprendiz WHERE profesor_id = $1 AND aprendiz_id = $2`,
      [usuario_id, usuario_target_id]
    );

    if (authorizationQuery.length === 0) {
      throw new Error("EAM003: Not authorized");
    }

    const vocablosQuery = await pool.query(`SELECT * FROM vocablo`);

    const temasDataObj = {};

    for (const vocablo of vocablosQuery.rows) {
      if (temasDataObj[vocablo.tema_id]) {
        temasDataObj[vocablo.tema_id].vocablos_counter += 1;
      } else {
        temasDataObj[vocablo.tema_id] = {
          vocablos_counter: 1,
        }
      }
    }

    const temasQuery = await pool.query(`SELECT * FROM tema`);

    for (const tema of temasQuery.rows) {
      if (temasDataObj[tema.id]) {
        temasDataObj[tema.id].data = tema;
        temasDataObj[tema.id].tema_id = tema.id;
      } else {
        temasDataObj[tema.id] = {
          data: tema,
          tema_id: tema.id,
        };
      }
    }

    const vocablosVistosQuery = await pool.query(
      `
        SELECT * FROM vocablo_visto
        WHERE usuario_id = $1 AND '[${start}, ${end}]'::daterange @> fecha
      `, [usuario_target_id]);
    const existTemaVocabloVistoObj = {};
    
    for (const vv of vocablosVistosQuery.rows) {

      if (existTemaVocabloVistoObj[`${vv.tema_id}${vv.vocablo_id}`]) {
        continue;
      }

      if (temasDataObj[vv.tema_id]) {
        if (temasDataObj[vv.tema_id].vocablos_vistos_counter) {
          temasDataObj[vv.tema_id].vocablos_vistos_counter += 1;
        } else {
          temasDataObj[vv.tema_id].vocablos_vistos_counter = 1;
        }
      } else {
        temasDataObj[vv.tema_id] = {
          vocablos_vistos_counter: 1
        };
      }

      existTemaVocabloVistoObj[`${vv.tema_id}${vv.vocablo_id}`] = true;
    }

    const vocablosCorrectosQuery = await pool.query(
      `
        SELECT * FROM vocablo_correcto
        WHERE usuario_id = $1 AND '[${start}, ${end}]'::daterange @> fecha
      `, [usuario_target_id]
    );

    const existTemaVocabloCorrectoObj = {};


    for (const vc of vocablosCorrectosQuery.rows) {

      if (existTemaVocabloCorrectoObj[`${vc.tema_id}${vc.vocablo_id}`]) {
        continue;
      }

      if (!vc.correcto) {
        continue;
      }
      
      if (temasDataObj[vc.tema_id]) {
        if (temasDataObj[vc.tema_id].vocablos_correctos_counter) {
          temasDataObj[vc.tema_id].vocablos_correctos_counter += 1;
        } else {
          temasDataObj[vc.tema_id].vocablos_correctos_counter = 1;
        }
      } else {

        temasDataObj[vc.tema_id] = {
          vocablos_correctos_counter: 1
        };
      }

      existTemaVocabloCorrectoObj[`${vc.tema_id}${vc.vocablo_id}`] = true;
    }

    const practicasQuery = await pool.query(`SELECT * FROM practica WHERE usuario_id = $1`, [usuario_target_id]);

    const _1day = 1000*60*60*24;
    const startDate = new Date(start);
    const endDate = new Date((new Date(end).getTime()) + _1day);
    let  practicas_realizadas = 0;
    let total_consultas = 0;
    let total_correctas = 0;
    
    for (const practica of practicasQuery.rows) {

      const practicaDate = new Date(practica.fecha);

      if (practicaDate.getTime() >= startDate.getTime() && practicaDate.getTime() <= endDate.getTime()) {

        practicas_realizadas += 1;
        total_consultas += practica.total_consultas;
        total_correctas += practica.total_correctas;

        if (temasDataObj[practica.tema_id]) {
          if (temasDataObj[practica.tema_id].practicas_hechas) {
            temasDataObj[practica.tema_id].practicas_hechas += 1;
          } else {
            temasDataObj[practica.tema_id].practicas_hechas = 1;
          }
  
          if (temasDataObj[practica.tema_id].total_consultas) {
            temasDataObj[practica.tema_id].total_consultas += practica.total_consultas;
          } else {
            temasDataObj[practica.tema_id].total_consultas = practica.total_consultas;
          }
  
          if (temasDataObj[practica.tema_id].total_correctas) {
            temasDataObj[practica.tema_id].total_correctas += practica.total_correctas;
          } else {
            temasDataObj[practica.tema_id].total_correctas = practica.total_correctas;
          }
        } else {
  
          temasDataObj[practica.tema_id] = {
            practicas_hechas: 1,
            total_consultas: practica.total_consultas,
            total_correctas: practica.total_correctas,
          };
        }
      }
      
    }

    const gradoQuery = await pool.query(`SELECT * FROM grado`);
    const grados = gradoQuery.rows;

    res.json({
      temas_data: Object.values(temasDataObj),
      practicas_last_7days: 'No aplica',
      practicas_realizadas,
      total_consultas, 
      total_correctas,
      total_incorrectas: total_consultas - total_correctas,
      grados
    });
  } catch (error) {
    next(error);
  }

}

const getDataByGradoRange = async (req, res, next) => {
  try {

    const usuario_id = req.user;

    const { usuario_target_id } = req.params;

    const {grado, start, end} = req.query;

    const grado_id = Number(grado);


    const authorizationQuery = await pool.query(
      `SELECT * FROM profesor_aprendiz WHERE profesor_id = $1 AND aprendiz_id = $2`,
      [usuario_id, usuario_target_id]
    );

    if (authorizationQuery.length === 0) {
      throw new Error("EAM004: Not authorized");
    }

    const gtvQuery = await pool.query(`SELECT * FROM grado_tema_vocablo`);

    const temasDataObj = {};

    for (const gtv of gtvQuery.rows) {

      if (gtv.grado_id !== grado_id) {
        continue;
      }

      if (temasDataObj[gtv.tema_id]) {
        temasDataObj[gtv.tema_id].vocablos_counter += 1;
      } else {
        temasDataObj[gtv.tema_id] = {
          vocablos_counter: 1,
        }
      }
    }

    const temasQuery = await pool.query(`SELECT * FROM tema`);

    for (const tema of temasQuery.rows) {
      if (temasDataObj[tema.id]) {
        temasDataObj[tema.id].data = tema;
        temasDataObj[tema.id].tema_id = tema.id;
      } else {
        temasDataObj[tema.id] = {
          data: tema,
          tema_id: tema.id,
        };
      }
    }

    const vocablosVistosQuery = await pool.query(
      `
        SELECT * FROM vocablo_visto
        WHERE usuario_id = $1 AND '[${start}, ${end}]'::daterange @> fecha
      `, [usuario_target_id]);
    const existTemaVocabloVistoObj = {};
    
    for (const vv of vocablosVistosQuery.rows) {

      if (vv.grado_id !== grado_id) {
        continue;
      }

      if (existTemaVocabloVistoObj[`${vv.tema_id}${vv.vocablo_id}`]) {
        continue;
      }

      if (temasDataObj[vv.tema_id]) {
        if (temasDataObj[vv.tema_id].vocablos_vistos_counter) {
          temasDataObj[vv.tema_id].vocablos_vistos_counter += 1;
        } else {
          temasDataObj[vv.tema_id].vocablos_vistos_counter = 1;
        }
      } else {
        temasDataObj[vv.tema_id] = {
          vocablos_vistos_counter: 1
        };
      }

      existTemaVocabloVistoObj[`${vv.tema_id}${vv.vocablo_id}`] = true;
    }

    const vocablosCorrectosQuery = await pool.query(
      `
        SELECT * FROM vocablo_correcto
        WHERE usuario_id = $1 AND '[${start}, ${end}]'::daterange @> fecha
      `, [usuario_target_id]
    );
    const existTemaVocabloCorrectoObj = {};


    for (const vc of vocablosCorrectosQuery.rows) {

      if (vc.grado_id !== grado_id) {
        continue;
      }
      
      if (existTemaVocabloCorrectoObj[`${vc.tema_id}${vc.vocablo_id}`]) {
        continue;
      }

      if (!vc.correcto) {
        continue;
      }
      
      if (temasDataObj[vc.tema_id]) {
        if (temasDataObj[vc.tema_id].vocablos_correctos_counter) {
          temasDataObj[vc.tema_id].vocablos_correctos_counter += 1;
        } else {
          temasDataObj[vc.tema_id].vocablos_correctos_counter = 1;
        }
      } else {

        temasDataObj[vc.tema_id] = {
          vocablos_correctos_counter: 1
        };
      }

      existTemaVocabloCorrectoObj[`${vc.tema_id}${vc.vocablo_id}`] = true;
    }

    const practicasQuery = await pool.query(`SELECT * FROM practica WHERE usuario_id = $1 AND grado_id = $2`, [usuario_target_id, grado_id]);

    const _1day = 1000*60*60*24;
    const startDate = new Date(start);
    const endDate = new Date((new Date(end).getTime()) + _1day);
    let  practicas_realizadas = 0;
    let total_consultas = 0;
    let total_correctas = 0;
    
    for (const practica of practicasQuery.rows) {

      const practicaDate = new Date(practica.fecha);

      if (practicaDate.getTime() >= startDate.getTime() && practicaDate.getTime() <= endDate.getTime()) {

        practicas_realizadas += 1;
        total_consultas += practica.total_consultas;
        total_correctas += practica.total_correctas;

        if (temasDataObj[practica.tema_id]) {
          if (temasDataObj[practica.tema_id].practicas_hechas) {
            temasDataObj[practica.tema_id].practicas_hechas += 1;
          } else {
            temasDataObj[practica.tema_id].practicas_hechas = 1;
          }
  
          if (temasDataObj[practica.tema_id].total_consultas) {
            temasDataObj[practica.tema_id].total_consultas += practica.total_consultas;
          } else {
            temasDataObj[practica.tema_id].total_consultas = practica.total_consultas;
          }
  
          if (temasDataObj[practica.tema_id].total_correctas) {
            temasDataObj[practica.tema_id].total_correctas += practica.total_correctas;
          } else {
            temasDataObj[practica.tema_id].total_correctas = practica.total_correctas;
          }
        } else {
  
          temasDataObj[practica.tema_id] = {
            practicas_hechas: 1,
            total_consultas: practica.total_consultas,
            total_correctas: practica.total_correctas,
          };
        }
      }
      
    }

    const gradoQuery = await pool.query(`SELECT * FROM grado`);
    const grados = gradoQuery.rows;

    res.json({
      temas_data: Object.values(temasDataObj),
      practicas_last_7days: 'No aplica',
      practicas_realizadas,
      total_consultas, 
      total_correctas,
      total_incorrectas: total_consultas - total_correctas,
      grados
    });
  } catch (error) {
    next(error);
  }

}

const getUserMonitorData = async (req, res, next) => {
  try {

    // const usuario_id = req.user;

    // const { usuario_target_id } = req.params;

    const {grado, start, end} = req.query;

    if (typeof grado ==='undefined' && typeof start ==='undefined' && typeof end ==='undefined') {
      console.log("getAllData");
      return getAllData(req, res, next);
    } else if (typeof grado !=='undefined' && typeof start ==='undefined' && typeof end ==='undefined') {
      console.log("getDataByGrado");
      return getDataByGrado(req, res, next);
    } else if (typeof grado === 'undefined' && typeof start !== 'undefined' && typeof end !=='undefined') {
      console.log("getDataByRange");
      return getDataByRange(req, res, next);
    } else if (typeof grado !== 'undefined' && typeof start !== 'undefined' && typeof end !=='undefined') {
      console.log("getDataByGradoRange");
      return getDataByGradoRange(req, res, next);
    } else {
      next({message: "unknown error"});
    }
    
   
  } catch (error) {
    next(error);
  }
};


module.exports = {
  addUserToMonitor,
  removeUserToMonitor,
  getUsersMonitorData,
  getUserMonitorData
};
