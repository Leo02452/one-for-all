SELECT DISTINCT
    ar.nome_artista AS artista,
    al.nome_album AS album,
    COUNT(sa.id_usuario) AS seguidores
FROM
    SpotifyClone.artistas AS ar
        INNER JOIN
    SpotifyClone.albuns AS al ON ar.id_artista = al.id_artista
        INNER JOIN
    SpotifyClone.seguindo_artistas AS sa ON ar.id_artista = sa.id_artista
GROUP BY artista , album
ORDER BY seguidores DESC , artista , album;