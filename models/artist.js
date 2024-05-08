const { DataTypes } = require('sequelize');
const sequelize = require('../services/db');

const Artist = sequelize.define('Artist', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
    },
    fullname: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    origin: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    bio: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    image: {
        type: DataTypes.STRING,
        allowNull: true,
    },
}, {
    timestamps: false
});

module.exports = Artist;