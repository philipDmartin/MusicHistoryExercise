SELECT ar.ArtistName, Count(al.Id) FROM Artist ar 
LEFT JOIN Album al 
ON al.ArtistId = ar.Id
GROUP BY (ar.ArtistName);

SELECT TOP 1 ar.ArtistName, al.Title, s.Title as SongTitle FROM Artist ar 
LEFT JOIN Album al  
ON al.ArtistId = ar.Id
INNER JOIN Song s
ON s.ArtistId = ar.Id
WHERE s.SongLength = (
    SELECT MAX(SongLength)FROM Song
    );   
