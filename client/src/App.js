import React, { useState, useEffect } from "react";
import "react-toastify/dist/ReactToastify.css";
import { BrowserRouter } from "react-router-dom";
import { ToastContainer } from "react-toastify";
import { QueryClient, QueryClientProvider } from "react-query";
import { AppRoutes } from "./routes";
import "react-toastify/dist/ReactToastify.css";

const queryClient = new QueryClient({
  defaultOptions: { queries: { retry: false } }
});

function App() {
  const [isAuthenticated, setIsAuthenticated] = useState(false);

  useEffect(() => {
    checkAuthenticated();
  }, []);

  const setAuth = (status) => {
    console.log("auth changed", { status });
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
      <QueryClientProvider client={queryClient}>
        <BrowserRouter>
          <div className="">
            <AppRoutes isAuthenticated={isAuthenticated} setAuth={setAuth} />
            <ToastContainer />
          </div>
        </BrowserRouter>
      </QueryClientProvider>
    </>
  );
}


export default App;
