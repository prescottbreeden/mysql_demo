--  SELECT * FROM heroes;

--  SELECT h.name, 
--         h.alias, 
--         p.title 
--    FROM heroes AS h
--    JOIN powers AS p
--      ON h.power_id = p.power_id
--    JOIN goodguys AS gg
--      ON gg.hero_id = h.hero_id;

 SELECT h.name,
        h.alias,
        p.title,
        gg.name AS team
   FROM heroes_goodguys AS hgg
   JOIN heroes AS h
     ON h.hero_id = hgg.hero_id
   JOIN powers AS p
     ON h.power_id = p.power_id
   JOIN goodguys AS gg
     ON gg.goodguy_id = hgg.goodguy_id;