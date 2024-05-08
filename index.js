const express = require('express');
const logger = require('morgan');
const cors = require('cors')
const app = express();

const router = require('./routes/index');

require('dotenv').config();
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(logger('dev'));
app.use(cors())
app.use(express.static(process.env.ASSETS))

const port = process.env.PORT | 3000;

app.listen(port);

app.use(router)