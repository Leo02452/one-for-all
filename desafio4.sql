SELECT 
    us.nome_usuario AS usuario,
    IF(MAX(YEAR(hi.data_reproducao)) = 2021,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.usuarios AS us
        INNER JOIN
    SpotifyClone.historico_reproducoes AS hi ON us.id_usuario = hi.id_usuario
GROUP BY usuario;