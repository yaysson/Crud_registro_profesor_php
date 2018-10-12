const express = require('express');//conectando con el framework express nodejs
const app = express();

//creando la peticion de enviar
app.get('/', (req, res) => {
    res.send('resivido');
});

//creando la peticion de resivir
app.post('/', (req, res) => {
    res.send('guardando... ');
});

//creando la peticion de actualizar
app.put('/', (req, res) => {
    res.send('actualizando... ');
});

//creando la peticion de eliminar
app.delete('/', (req, res) => {
    res.send('eliminando... ');
});

//servidor donde se muestra
app.listen(3000, () => {
    console.log('sever on 3000');
});