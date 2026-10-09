
CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);
CREATE TABLE tracks (
    track_id SERIAL PRIMARY KEY,
    genre_id INTEGER NOT NULL REFERENCES genres(genre_id),
    title VARCHAR(150) NOT NULL,
    duration_seconds INTEGER NOT NULL
);
CREATE TABLE listening_logs (
    log_id SERIAL PRIMARY KEY,
    track_id INTEGER NOT NULL REFERENCES tracks(track_id),
    listened_at TIMESTAMP NOT NULL,
    duration_listened_seconds INTEGER NOT NULL
);