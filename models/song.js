const { DataTypes } = require('sequelize');
const sequelize = require('../services/db');

const Song = sequelize.define('Song', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    title: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    releasedYear: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    audio: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    image: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    mode: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    bpm: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    popularity: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    happiness: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    danceability: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    energy: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    acousticness: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    instrumentalness: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    liveness: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    speechiness: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },

}, {
    timestamps: false
});

module.exports = Song;