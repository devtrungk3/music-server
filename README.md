# Database structure
#### Users table
|Column|Description|
|-|-|
|username|Primary key|
|password||
|fullname||
|email|unique|
|role||
|createdAt||
|updatedAt||

#### Songs table
|Column|Description|
|-|-|
|id|Primary key, auto increment|
|title||
|released_year||
|audio|Path to audio file of song|
|image|Path to image file of song|
|mode|Mode of the song (major or minor)|
|bpm|Beats per minute|
|popularity|The song's popularity|
|happiness|The happiness that the song expresses|
|danceability|Percentage indicating how suitable the song is for dancing|
|energy|Perceived energy level of the song|
|acousticness|Amount of acoustic sound in the song|
|instrumentalness|Amount of instrumental content in the song|
|liveness|Presence of live performance elements|
|speechiness|Amount of spoken words in the song|

#### Artists table
|Column|Description|
|-|-|
|id|Primary key, auto increment|
|fullname||
|gender||
|nationality||
|image|Path to image file of artist|

#### Genres table
|Column|Description|
|-|-|
|id|Primary key, auto increment|
|title||

#### Playlists table
|Column|Description|
|-|-|
|id|Primary key, auto increment|
|title||
|description||
|userId|foreign key references to Users(username)|

#### Songs_artists table (Songs - many to many - Artists)
|Column|Description|
|-|-|
|songId|Primary key, foreign key references to Songs(id)|
|artistId|Primary key, foreign key references to Artists(id)|

#### Songs_genres table (Songs - many to many - Genres)
|Column|Description|
|-|-|
|songId|Primary key, foreign key references to Songs(id)|
|genresId|Primary key, foreign key references to Genres(id)|

#### Favorites table (Users - many to many - Songs)
|Column|Description|
|-|-|
|userId|Primary key, foreign key references to Users(username)|
|songId|Primary key, foreign key references to Songs(id)|
|createdAt||
|updatedAt||

#### Playlists_songs table (Users - many to many - Songs)
|Column|Description|
|-|-|
|playlistId|Primary key, foreign key references to Playlists(id)|
|songId|Primary key, foreign key references to Songs(id)|
|createdAt||
|updatedAt||

# API reference
### Auth
Login
```http
POST /auth/login
```
```json
Request
    body: {
        "username": username,
        "password": password
    }
Response
    body: {
        "accessToken": token,
    }
    cookies: {
        "refreshToken": token
    }
```
Signup
```http
POST /auth/signup
```
```json
Request
    body: {
        "username": username,
        "password": password,
        "fullname": fullname,
        "email": email,
    }
Response
    body: {
        "accessToken": token,
    }
    cookies: {
        "refreshToken": token
    }
```
Refresh token
```http
GET /auth/refresh
```
```json
Request
    headers:
        cookie: {
            refreshToken=token
        }
Response
    body: {
        "accessToken": token,
    }
```
### Song
Get all songs
```http
GET /songs
```
```json
Response
    body: {
        "songs": [
            song1,
            song2,
            ...
        ],
        "page": current_page,
        "page_size": songs_per_page,
        "total_page": number_of_pages
    }
```
Get song by id
```http
GET /songs/{id}
```
```json
Response
    body: {
        "song": song_info,
        "artists": [
            artist1,
            artist2,
            ...
        ],
        "genres": [
            genre1,
            genre2,
            ...
        ]
    }
```
Get songs by pagination
```http
GET /songs?page={page}&pageSize={pageSize}
```
Get songs by title
```http
GET /songs?title={title}
```
### Artist
Get all artists
```http
GET /artists
```
Get artist by id
```http
GET /artists/{id}
```
Get aritsts by pagination
```http
GET /artists?page={page}&pageSize={pageSize}
```
Get artists by fullname
```http
GET /artists?fullname={fullname}
```
Get songs belongs to artist
```http
GET /artists/{id}/songs
```
```json
Response
    body: {
        "artist": artist_info,
        "songs": [
            song1,
            song2,
            ...
        ],
        "page": current_page,
        "page_size": songs_per_page,
        "total_page": number_of_pages
    }
```
### Genres
Get all genres
```http
GET /genres
```
Get genre by id
```http
GET /genres/{id}
```
Get genres by pagination
```http
GET /genres?page={page}&pageSize={pageSize}
```
Get genres by title
```http
GET /genres?title={title}
```
Get songs belongs to genre
```http
GET /genres/{id}/songs
```
### Favorite
Get all songs in favorite list
```http
GET /favorites
```
Get songs in favorite list by pagination
```http
GET /favorites?page={page}&pageSize={pageSize}
```
Get songs in favorite list by title
```http
GET /favorites?title={title}
```
Add new song into favorite list
```http
POST /favorites
```
```json
Request
    body: {
        "songId": songId,
    }
```
Remove song from favorite list
```http
DELETE /favoriates/{songId}
```
### Playlist
Get all playlists of user
```http
GET /playlists
```
```json
Request
    headers: 
        authorization: "Bearer token"
```
Get playlist with songs in it
```http
GET /playlists/{id}
```
Create new playlist
```http
POST /playlists
```
```json
Request
    body: {
        "title": title,
        "description":description
    }
Response:
    body: {
        "success": "playlist created successfully"
    }
```
Add song into playlist
```http
POST /playlists/{id}
```
```json
Request
    body: {
        "songId": songId,
    }
Response
    body: {
        "success": "song is added to playlist successfully"
    }
Or Response:
    body: {
        "error": "this song already exists in playlist"
    }
```
Update playlist by id
```http
PUT /playlists/{id} 
```
Delete playlist by id
```http
DELETE /playlists/{id}
```
Remove song from playlist
```http
DELETE /playlists/{id}/song
```
```json
Request
    body: {
        "songId": songId
    }
```