const { DataTypes } = require('sequelize');
const sequelize = require('../services/db');

const User = sequelize.define('User', {
    username: {
        type: DataTypes.STRING,
        primaryKey: true,
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    fullname: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    email: {
        type: DataTypes.STRING,
        unique: true,
    },
    role: {
        type: DataTypes.STRING,
        allowNull: false,
    },
}, {
    timestamps: true
});

module.exports = User;