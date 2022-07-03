// import TaskForm from "./components/TaskForm";
// import TasksList from "./components/TasksList";
// import Menu from "./components/Navbar";
// import { BrowserRouter, Route, Routes } from "react-router-dom";
// import { Container } from "@mui/material";

// function App() {
//   return (
//     <BrowserRouter>
//       <Menu />
//       <Container>
//         <Routes>
//           <Route index path="/" element={<TasksList />} />
//           <Route path="/tasks/new" element={<TaskForm />} />
//           <Route path="/tasks/:id/edit" element={<TaskForm />} />
//         </Routes>
//       </Container>
//     </BrowserRouter>
//   );
// }

// export default App;

import React, { useState, useEffect } from "react";
import "react-toastify/dist/ReactToastify.css";
import {
  BrowserRouter, Route, Routes, Navigate, Outlet
} from "react-router-dom";
import { ToastContainer } from "react-toastify";

import SignIn from "./components/SignIn";
import SignUp from "./components/SignUp";
import Dashboard from "./components/Dashboard";
import Practicar from "./components/Practicar";
import ExplorarVocabularioTemas from "./components/ExplorarVocabularioTemas";
import ExplorarVocabularioCategorias from "./components/ExplorarVocabularioCategorias";
import Practica from "./components/Practica";
import Inicio from "./components/Inicio";
import AprendicesMonitor from "./components/AprendicesMonitor";

// toast.configure();

// const ProtectedRoute = ({
//   isAllowed,
//   redirectPath = '/login',
//   children,
// }) => {
//   if (!isAllowed) {
//     return <Navigate to={redirectPath} replace />;
//   }

//   return children ? children : <Outlet />;
// };


function App() {
  const [isAuthenticated, setIsAuthenticated] = useState(false);

  useEffect(() => {
    checkAuthenticated();
  }, []);

  const setAuth = (status) => {
    console.log("auth changed", {status})
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
      console.log({err});
      console.error(err.message);
      setIsAuthenticated(false);
    }
  };

  return (
    <>
      <BrowserRouter>
        <div className="">
          <Body isAuthenticated={isAuthenticated} setAuth={setAuth} />
          <ToastContainer/>
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
        <SignIn  setAuth={setAuth} />
      )
    } />
    <Route
      path="/login"
      element={!isAuthenticated ? (
        <SignIn  setAuth={setAuth} />
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
    <Route path="/dashboard" element={ isAuthenticated ? (<Dashboard setAuth={setAuth}/>) : <Navigate to="/login" />}>
      
      <Route path="inicio" element={
          <Inicio />
      } />
      
      <Route path="practicar" element={
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
      <Route path="supervisar" element={
        <AprendicesMonitor />
      } />
    </Route>
  </Routes>
  );


export default App;
