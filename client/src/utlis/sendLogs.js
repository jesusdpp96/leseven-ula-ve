
async function sendLogs({logs}) {

  if (logs && logs.length > 0) {
    try {
      const response = await fetch("http://localhost:4000/logs", {
        method: "POST",
        headers: {
          "Content-type": "application/json",
          "token": localStorage.token,
        },
        body: JSON.stringify({logs}),
      });

      if (response.status === 204) {
        console.info("logs sent");

      } else {
        console.error("Unknown errors sending logs");
      }

    } catch(err) {
      // code to error action
      console.error("Connection error sending logs");
    }

  }
  
}


export default sendLogs;
