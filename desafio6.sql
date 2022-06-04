SELECT 
    MIN(valor_plano) AS faturamento_minimo,
    MAX(valor_plano) AS faturamento_maximo,
    ROUND(AVG(valor_plano), 2) AS faturamento_medio,
    SUM(valor_plano) AS faturamento_total
FROM
    SpotifyClone.planos AS pl
        INNER JOIN
    SpotifyClone.usuarios AS us ON pl.id_plano = us.id_plano;