const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('¡Bienvenido a mi aplicación Node.js para el curso de Docker en EducacionIT!');
});

app.listen(port, () => {
  console.log(`Servidor escuchando en el puerto ${port}`);
});
