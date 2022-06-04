SELECT 
    nome_cancoes AS nome_musica,
    CASE
        WHEN
            ca.nome_cancoes = 'Without My Streets'
        THEN
            REPLACE(ca.nome_cancoes,
                'Streets',
                'Code Review')
        WHEN
            ca.nome_cancoes = 'Dance With Her Own'
        THEN
            REPLACE(ca.nome_cancoes,
                'Her Own',
                'Trybe')
        WHEN
            ca.nome_cancoes = 'Troubles Of My Inner Fire'
        THEN
            REPLACE(ca.nome_cancoes,
                'Inner Fire',
                'Project')
        WHEN
            ca.nome_cancoes = 'Let\'s Be Silly'
        THEN
            REPLACE(ca.nome_cancoes,
                'Silly',
                'Nice')
        WHEN
            ca.nome_cancoes = 'Magic Circus'
        THEN
            REPLACE(ca.nome_cancoes,
                'Circus',
                'Pull Request')
    END AS novo_nome
FROM
    SpotifyClone.cancoes AS ca
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica;