SELECT
  COUNT(DISTINCT ca.nome_cancoes) AS cancoes,
  COUNT(DISTINCT ar.nome_artista) AS artistas,
  COUNT(DISTINCT al.nome_album) AS albuns
FROM SpotifyClone.cancoes AS ca
INNER JOIN SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ca.id_album = al.id_album;