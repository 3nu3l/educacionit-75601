const express = require('express');
const app = express();
const port = 3000;

// Añadir headers CORS
app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
  next();
});

app.get('/', (req, res) => {
  res.send('¡Bienvenido a mi aplicación Node.js para el curso de Docker en EducacionIT!');
});

app.listen(port, () => {
  console.log(`Servidor escuchando en el puerto ${port}`);
});
