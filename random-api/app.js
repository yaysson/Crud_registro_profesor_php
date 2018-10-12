const express = require('express');//conectando con el framework express nodejs
const app = express();

//creando la peticion de enviar
app.get('/', (req, res) => {
    res.send('resivido');
});

//creando la peticion de pedir datos por la url
app.get('/random-api/:numInit/:numEnd', (req, res) => {
    const min = parseInt(req.params.numInit);
    const max = parseInt(req.params.numEnd);

    //verificando si todo los datos a pedir son numero
    if(isNaN(min) || isNaN(max)){
        res.status(404);
        res.json({"Error": 'No se a podido ejecutar'});
        return;
    }

    //realizando la operacion de random
    const result = Math.floor(Math.random() * (max - min) + min);
    res.json({"Randomnumber": result});
});

//servidor donde se muestra
app.listen(4500, () => {
    console.log('sever on prot', 4500);
});