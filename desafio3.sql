SELECT 
    us.nome_usuario AS usuario,
    COUNT(hi.id_cancoes) AS qtde_musicas_ouvidas,
    ROUND(SUM(ca.duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.usuarios AS us
        INNER JOIN
    SpotifyClone.historico_reproducoes AS hi ON us.id_usuario = hi.id_usuario
        INNER JOIN
    SpotifyClone.cancoes AS ca ON hi.id_cancoes = ca.id_cancoes
GROUP BY usuario;