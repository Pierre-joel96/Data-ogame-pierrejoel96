const dataMapper = require("../datamapper");

const gameController = {
    insert:async(req,res)=>{
        // on fait appel au model pour insérer
        const result = await dataMapper.insert(req.body);
        console.log(result);
        res.json(result.rows[0]);
    }
};

module.exports = gameController;