const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('¡Bienvenido a mi aplicación Node.js!');
});

app.listen(port, () => {
  console.log(`La aplicación está corriendo en http://localhost:${port}`);
});