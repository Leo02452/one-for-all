SELECT 
    COUNT(hi.id_cancoes) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico_reproducoes AS hi
        INNER JOIN
    SpotifyClone.usuarios AS us ON hi.id_usuario = us.id_usuario
WHERE
    us.id_usuario = 3;