const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const port = process.env.PORT || 5000;
const pool = require('./modules/db');
const moviesRouter = require('./routes/movies');
const genresRouter = require('./routes/genres');


app.use(bodyParser.json()); 
app.use(express.static('build'));


app.use(bodyParser.urlencoded({extended:true}));

app.use('/api/movies', moviesRouter);
app.use('/api/genres', genresRouter);


app.listen(port, function () {
    console.log('Listening on port: ', port);
});