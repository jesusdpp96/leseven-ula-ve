import React from "react";
import "react-toastify/dist/ReactToastify.css";
import {
  Route, Routes, Navigate
} from "react-router-dom";

import SignIn from "./components/SignIn";
import SignUp from "./components/SignUp";
import Dashboard from "./components/Dashboard";
import Practicar from "./components/Practicar";
import Estudiar from "./components/Estudiar";
import ExplorarVocabularioTemas from "./components/ExplorarVocabularioTemas";
import ExplorarVocabularioCategorias from "./components/ExplorarVocabularioCategorias";
import Practica from "./components/Practica";
import Inicio from "./components/Inicio";
import AprendicesMonitor from "./components/UserMonitor/AprendicesMonitor";
import Glosario from "./components/Glosario"
import UserMonitorIndividual from "./components/UserMonitor/UserMonitorIndividual";
import PruebasMonitor from "./components/UserMonitor/PruebasMonitor/PruebasMonitor";
import PruebaDetalles from "./components/UserMonitor/PruebasMonitor/PruebaDetalles";
import EstudiosMonitor from "./components/UserMonitor/PruebasMonitor/EstudiosMonitor";

export const AppRoutes = ({ isAuthenticated, setAuth }) => (
  <Routes>
    <Route index path="/" element={
      isAuthenticated ? (
        <Navigate to="/dashboard/inicio" />
      ) : (
        <SignIn setAuth={setAuth} />
      )
    } />
    <Route
      path="/login"
      element={!isAuthenticated ? (
        <SignIn setAuth={setAuth} />
      ) : (
        <Navigate to="/dashboard/inicio" />
      )}
    />
    <Route
      path="/register"
      element={
        !isAuthenticated ? (
          <SignUp setAuth={setAuth} />
        ) : (
          <Navigate to="/dashboard/inicio" />
        )
      }
    />
    <Route path="/dashboard" element={isAuthenticated ? (<Dashboard setAuth={setAuth} />) : <Navigate to="/login" />}>

      <Route path="inicio" element={
        <Inicio />
      } />

      <Route path="estudiar" element={
        <Estudiar />
      } />
      <Route path="prueba" element={
        <Practicar />
      } />
      <Route path="explorar-vocabulario-temas" element={
        <ExplorarVocabularioTemas />
      } />
      <Route path="explorar-vocabulario-categorias" element={
        <ExplorarVocabularioCategorias />
      } />
      <Route path="practica" element={
        <Practica />
      } />
      <Route path="/dashboard/prueba/practica" element={
        <Practica />
      } />
      <Route exact path="supervisar/:userId/estudios" element={
        <EstudiosMonitor />
      } />
      <Route exact path="supervisar/:userId/pruebas" element={
        <PruebasMonitor />
      } />
      <Route exact path="supervisar/:userId" element={
        <UserMonitorIndividual />
      } />
      <Route exact path="supervisar/pruebas/:pruebaId" element={
        <PruebaDetalles />
      } />
      <Route exact path="supervisar" element={
        <AprendicesMonitor />
      } />
      <Route path="glosario" element={
        <Glosario />
      } />
    </Route>
  </Routes>
);