import React from "react";
import { useParams } from "react-router-dom";

export default function PruebasMonitor() {
  const {userId} = useParams();

  return <div>Pruebas {userId}</div>
}