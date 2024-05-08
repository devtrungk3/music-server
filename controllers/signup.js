const asyncHandler = require('express-async-handler');
const jwtUtil = require('../utils/jwt');
const User = require('../models/user');

const userSignupController = asyncHandler(async (req, res) => {
    const { username, password, fullname, email } = req.body;
    const role = "USER";
    /**
     * check data exists in database
     */
    const usernameExists = await User.findOne({ where: { username: username } });
    if (usernameExists) {
        return res.status(409).json({ error: 'username already in use!'});
    }
    const emailExists = await User.findOne({ where: { email: email } });
    if (emailExists) {
        return res.status(409).json({ error: 'email already in use!'});
    }

    /**
     * insert new records into users table
     */
    const user = await User.create({
        username,
        password,
        fullname,
        email,
        role,
    });

    /**
     * create new access and refresh token using credentials
     */
    const accessToken = jwtUtil.generateAccessToken({
        username: user.username,
        email: user.email,
        role: user.role
    });
    const refreshToken = jwtUtil.generateRefreshToken({
        username: user.username,
        email: user.email,
        role: user.role    
    });

    res.json({accessToken, refreshToken});
    
});

module.exports = { userSignupController };