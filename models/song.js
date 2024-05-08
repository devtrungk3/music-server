const { DataTypes } = require('sequelize');
const sequelize = require('../services/db');

const Song = sequelize.define('Song', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
    },
    title: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    releaseYear: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    audio: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    lyrics: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    image: {
        type: DataTypes.STRING,
        allowNull: true,
    }
}, {
    timestamps: false
});

module.exports = Song;