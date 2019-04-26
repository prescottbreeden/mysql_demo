 INSERT INTO powers (title) 
      VALUES ('flying'), 
             ('invisibility'), 
             ('laser eyes');

 INSERT INTO heroes (name, alias, power_id)
      VALUES ('Wonder Woman', 'Dianna', 2),
             ('Super Man', 'Clark Kent', 1),
             ('Cyclops', 'Scott Person-person', 3);
            
 INSERT INTO goodguys (name)
      VALUES ('Justice League'),
             ('X-men'),
             ('Shield');

 INSERT INTO heroes_goodguys (hero_id, goodguy_id)
      VALUES (1, 1),
             (2, 1),
             (3, 2);
             