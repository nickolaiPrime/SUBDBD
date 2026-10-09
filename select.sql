SELECT 
    g.title AS жанр,
    t.title AS трек,
    t.duration_seconds AS длительность_трека,
    l.listened_at AS когда_слушали,
    l.duration_listened_seconds AS прослушано_секунд
FROM listening_logs l
JOIN tracks t ON l.track_id = t.track_id
JOIN genres g ON t.genre_id = g.genre_id
ORDER BY l.listened_at;