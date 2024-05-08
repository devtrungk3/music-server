const express = require('express');
const router = express.Router();

const loginRouter = require('./login');
const signupRouter = require('./signup');
const refreshRouter = require('./refresh');
const artistRouter = require('./artist');
const genreRouter = require('./genre');
const songRouter = require('./song');
const favoriteRouter = require('./favorite');
const playlistRouter = require('./playlist');

router.get('/helloworld', (req, res) => {
    res.json('hello world');
});

router.use('/auth', loginRouter, signupRouter, refreshRouter);
router.use('/artists', artistRouter);
router.use('/genres', genreRouter);
router.use('/songs', songRouter);
router.use('/favorites', favoriteRouter);
router.use('/playlists', playlistRouter);

router.use(function(err, req, res, next) {
    console.log(err);
    res.status(500).json({
        error: err.errors[0].message,
    });
});

module.exports = router;