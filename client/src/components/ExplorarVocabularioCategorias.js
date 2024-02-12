import * as React from 'react';
import { useSearchParams } from 'react-router-dom';
import GradoTemasListExplorar2 from './GradoTemasListExplorar/GradoTemasListExplorar2';
import TemaVocablosListExplorar from './TemaVocablosListExplorar';

export default function ExplorarVocabularioCategorias() {
  let view = 'temas';

  const [query] = useSearchParams();


  const temaQuery = query.get('tema');

  if (view === 'temas' && typeof temaQuery === 'string') {
    view = 'vocablos';
  }

  // console.log({gradoQuery, typeof: typeof gradoQuery});

  return (view === 'temas' ? 
          <GradoTemasListExplorar2 /> :
          view === 'vocablos' ?
          <TemaVocablosListExplorar tema={Number(temaQuery)}/> :
          null)
}