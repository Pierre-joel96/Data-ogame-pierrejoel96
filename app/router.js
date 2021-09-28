const express = require("express");

const gameController = require("./controller/gameController.js");

const router = express.Router();

router.post("/game",gameController.insert);

module.exports = router;