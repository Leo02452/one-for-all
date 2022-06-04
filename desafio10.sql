SELECT 
    ca.nome_cancoes AS nome, COUNT(us.id_usuario) AS reproducoes
FROM
    SpotifyClone.cancoes AS ca
        INNER JOIN
    SpotifyClone.historico_reproducoes AS hi ON hi.id_cancoes = ca.id_cancoes
        INNER JOIN
    SpotifyClone.usuarios AS us ON hi.id_usuario = us.id_usuario
WHERE
    us.id_plano = 1 OR us.id_plano = 4
GROUP BY nome
ORDER BY reproducoes DESC , nome;