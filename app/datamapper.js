const pool = require("./database");

const dataMapper = {
    insert:async(game)=>{
        const query = {
            text:"SELECT insert_game($1,$2,$3,$4,$5,$6,$7,$8,$9,$10)",
            values:[
                game.name,
                game.theme,
                game.author,
                game.image,
                game.editor,
                game.age_minimum,
                game.duration,
                game.player_minimum,
                game.player_maximum,
                game.description
            ]
        };

        return await pool.query(query);
    }
};

module.exports = dataMapper;