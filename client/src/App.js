import React, { useState, useEffect } from "react";
import "react-toastify/dist/ReactToastify.css";
import {
  BrowserRouter, Route, Routes, Navigate
} from "react-router-dom";
import { ToastContainer } from "react-toastify";

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


function App() {
  const [isAuthenticated, setIsAuthenticated] = useState(false);

  useEffect(() => {
    checkAuthenticated();
  }, []);

  const setAuth = (status) => {
    console.log("auth changed", { status })
    setIsAuthenticated(status);
  };

  // TODO: Completar logica SignIn
  // TODO: Completar logica SignUp

  const checkAuthenticated = async () => {
    try {
      const res = await fetch("/auth/verify", {
        method: "POST",
        headers: { token: localStorage.token },
      });

      const parseRes = await res.json();

      parseRes === true ? setIsAuthenticated(true) : setIsAuthenticated(false);
    } catch (err) {
      console.log({ err });
      console.error(err.message);
      setIsAuthenticated(false);
    }
  };

  return (
    <>
      <BrowserRouter>
        <div className="">
          <Body isAuthenticated={isAuthenticated} setAuth={setAuth} />
          <ToastContainer />
        </div>
      </BrowserRouter>
    </>
  );
}

export const Body = ({ isAuthenticated, setAuth }) => (
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
      <Route path="supervisar/:userId" element={
        <UserMonitorIndividual />
      } />
      <Route path="supervisar" element={
        <AprendicesMonitor />
      } />
      <Route path="glosario" element={
        <Glosario />
      } />
    </Route>
  </Routes>
);


export default App;
