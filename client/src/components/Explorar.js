import * as React from 'react';
import { useSearchParams } from 'react-router-dom';
import GradosList from './GradosList';
import GradoTemasList from './GradoTemasList';
import TemaVocablosList from './TemaVocablosList';

export default function Explorar() {
  let view = 'grados';

  const [query, setQuery] = useSearchParams();

  const gradoQuery = query.get('grado');

  const temaQuery = query.get('tema');

  if (typeof gradoQuery === 'string') {
    view = 'temas';
  }

  if (view === 'temas' && typeof temaQuery === 'string') {
    view = 'vocablos';
  }

  // console.log({gradoQuery, typeof: typeof gradoQuery});

  return (view === 'temas' ? 
          <GradoTemasList grado={Number(gradoQuery)} /> :
          view === 'vocablos' ?
          <TemaVocablosList grado={Number(gradoQuery)} tema={Number(temaQuery)}/> :
          <GradosList />)
}