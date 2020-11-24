const Pool= require('pg').Pool;

const pool = new Pool({
    user : 'postgres',
    password : 'sw@pnasonu123',
    database : 'movies',
    host : 'localhost',
    port : '5432',
})

module.exports = pool;