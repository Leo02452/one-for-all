SELECT 
    ca.nome_cancoes AS cancao,
    COUNT(hi.id_cancoes) AS reproducoes
FROM
    SpotifyClone.cancoes AS ca
        INNER JOIN
    SpotifyClone.historico_reproducoes AS hi ON ca.id_cancoes = hi.id_cancoes
GROUP BY cancao
ORDER BY reproducoes DESC , cancao
LIMIT 2;