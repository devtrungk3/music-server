users:
    username,
    password,
    fullname,
    email,
    role,
    createdAt,
    updatedAt,
songs:
    id,
    title,
    release_year,
    audio,
    lyrics,
    image,
artists:
    id,
    fullname,
    origin,
    bio,
    image,
songs_artists:
    song_id,
    artist_id,
genres:
    id,
    title,
songs_genres:
    song_id,
    genre_id,
playlists:
    id,
    title,
    description,
    is_public,
    user_id,
    createdAt,
    updatedAt,
playlists_songs:
    playlist_id,
    song_id,
favorites:
    user_id,
    song_id,


API documents:
    auth:
        POST /auth/login
        POST /auth/signup
    *   POST /auth/refresh
    song:
        GET /songs/                                     get all songs
        GET /songs/{id}                                 get song by id
        GET /songs?page={page}&pageSize={pageSize}      get songs by pagination
        GET /songs?title={title}                        get songs by title
    artist:
        GET /artists/                                   get all artists
        GET /artists/{id}                               get artist by id 
        GET /artists?page={page}&pageSize={pageSize}    get artists by pagination
        GET /artists?fullname={fullname}                get artists by fullname
    genre:
        GET /genres/                                    get all genres
        GET /genres/{id}                                get genre by id 
        GET /genres?page={page}&pageSize={pageSize}     get genres by pagination
        GET /genres?title={title}                       get genres by title
    favorite:
        GET /favorites                                  get all songs in favorite list
        GET /favorites?page={page}&pageSize={pageSize}  get all songs in favorite list by pagination
        GET /favorites?title={title}                    get all songs in favorite list by title
        POST /favorites                                 add new song into favorite list 
            body: {
                songId: {songId},
            }
        DELETE /favoriates/{songId}                     remove song from favorite list
    playlist:
        GET /playlists                                  get all playlists
        GET /playlists/{id}                             get playlist with songs in it by playlistId
        POST /playlists                                 create new playlist
        POST /playlists/{id}                            add song into playlist
            body: {
                songId: {songId},
            }
        PUT /playlists/{id}                             update playlist by id
        DELETE /playlists/{id}                          delete playlist by id
        DELETE /playlists/{id}/song                     remove song from playlist
            body: {
                songId: {songId},
            }