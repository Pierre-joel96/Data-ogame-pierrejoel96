require("dotenv").config();

const express = require('express');

const app = express();

app.use(express.json());

const router = require("./app/router.js");
app.use(router);


const PORT = process.env.PORT || 3000;
app.listen(PORT,()=>{
    console.log("Votre serveur est démarré et prêt à répondre à tout requête.");
});
