UPDATE Salesperson
SET 
    Store = 'Miami'
WHERE
    Name = 'Paige Turner';

UPDATE Customer
    SET email = (case when Name = 'Pablo Picasso' then 'ppicasso@gmail.com'
                         when Name = 'Abraham Lincoln' then 'lincoln@us.gov'
                         when Name = 'Napoléon Bonaparte' then 'hello@napoleon.me'
                    end)
    WHERE email =  '-';