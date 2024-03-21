import React from "react";
import { useParams } from "react-router-dom";

export default function PruebaDetalles() {
  const {pruebaId} = useParams();
  console.log(pruebaId);

  return (
    <div>
      <h1>PruebaDetalles</h1>
    </div>
  );
}