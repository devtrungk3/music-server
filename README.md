# Database structure
#### Users table
|Column|Data type|Allow null|Description|
|-|-|-|-|
|id|Integer|No|Primary key, auto increment|
|username|String|No|Unique|
|password|String|No||
|fullname|String|No||
|email|String|No|Unique|
|role|String|No||
|createdAt|Timestamp|No||
|updatedAt|Timestamp|Yes||

#### Songs table
|Column|Data type|Allow null|Description|
|-|-|-|-|
|id|Integer|No|Primary key, auto increment|
|title|String|No||
|releasedYear|Integer|Yes||
|audio|String|Yes|Path to audio file of song|
|image|String|Yes|Path to image file of song|
|mode|String|Yes|Mode of the song (major or minor)|
|bpm|Integer|Yes|Beats per minute|
|popularity|Integer|Yes|The song's popularity|
|happiness|Integer|Yes|The happiness that the song expresses|
|danceability|Integer|Yes|Percentage indicating how suitable the song is for dancing|
|energy|Integer|Yes|Perceived energy level of the song|
|acousticness|Integer|Yes|Amount of acoustic sound in the song|
|instrumentalness|Integer|Yes|Amount of instrumental content in the song|
|liveness|Integer|Yes|Presence of live performance elements|
|speechiness|Integer|Yes|Amount of spoken words in the song|

#### Artists table
|Column|Data type|Allow null|Description|
|-|-|-|-|
|id|Integer|No|Primary key, auto increment|
|fullname|String|No||
|gender|Integer|No||
|nationality|String|No||
|image|String|Yes|Path to image file of artist|

#### Genres table
|Column|Data type|Allow null|Description|
|-|-|-|-|
|id|Integer|No|Primary key, auto increment|
|title|String|No||

#### Playlists table
|Column|Data type|Allow null|Description|
|-|-|-|-|
|id|Integer|No|Primary key, auto increment|
|title|String|No||
|description|String|Yes||
|userId|Integer|No|Foreign key references to Users(id)|

#### Songs_artists table (Songs - many to many - Artists)
|Column|Data type|Allow null|Description|
|-|-|-|-|
|songId|Integer|No|Primary key, foreign key references to Songs(id)|
|artistId|Integer|No|Primary key, foreign key references to Artists(id)|

#### Songs_genres table (Songs - many to many - Genres)
|Column|Data type|Allow null|Description|
|-|-|-|-|
|songId|Integer|No|Primary key, foreign key references to Songs(id)|
|genreId|Integer|No|Primary key, foreign key references to Genres(id)|

#### Favorites table (Users - many to many - Songs)
|Column|Data type|Allow null|Description|
|-|-|-|-|
|userId|Integer|No|Primary key, foreign key references to Users(id)|
|songId|Integer|No|Primary key, foreign key references to Songs(id)|
|createdAt|Timestamp|No||
|updatedAt|Timestamp|Yes||

#### Playlists_songs table (Users - many to many - Songs)
|Column|Data type|Allow null|Description|
|-|-|-|-|
|playlistId|Integer|No|Primary key, foreign key references to Playlists(id)|
|songId|Integer|No|Primary key, foreign key references to Songs(id)|
|createdAt|Timestamp|No||
|updatedAt|Timestamp|Yes||

# API reference
### Auth
Login
```http
POST /auth/login
```
```javascript
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
```javascript
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
```javascript
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
```javascript
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
```javascript
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
```javascript
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
```javascript
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
```javascript
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
```javascript
Request
    body: {
        "title": title,
        "description":description
    }
Response
    body: {
        "success": "playlist created successfully"
    }
```
Add song into playlist
```http
POST /playlists/{id}
```
```javascript
Request
    body: {
        "songId": songId,
    }
Response
    body: {
        "success": "song is added to playlist successfully"
    }
Or Response
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
```javascript
Request
    body: {
        "songId": songId
    }
```