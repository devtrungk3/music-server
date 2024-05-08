const asyncHandler = require('express-async-handler');
const User = require('../models/user');
const jwtUtil = require('../utils/jwt');

const userLoginController = asyncHandler(async (req, res) => {
    const {username, password} = req.body;
    /**
     * get user information from database
     */
    const user = await User.findOne({
        where: { username, password },
        attributes: ['username', 'password', 'email', 'role'],
    });
    /**
     * check wrong credentials
     */
    if (!user) 
        return res.status(401).json({
            error: 'username or password is wrong!'
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

module.exports = { userLoginController };