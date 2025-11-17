use intern_1;
select * from cards_data;

*** getting specific columns***

select id,client_id,card_number,num_cards_issued
from 
cards_data;

*** where condition

select * 
from
cards_data
where has_chip='yes';

select
*
from
cards_data
where card_brand='mastercard' and card_type='credit';

*** or condition***

select
*
from
cards_data
where card_brand='mastercard' or card_brand='visa';

***between condition***

select *
from
cards_data
where num_cards_issued between 1 and 3;

select *
from
cards_data
where year_pin_last_changed between 2010 and 2020;

*** like condition ***
SELECT * FROM cards_data
WHERE expires LIKE '%/2024';

SELECT * FROM cards_data
WHERE card_type LIKE '%Debit%';

*** order by***
SELECT * FROM cards_data
ORDER BY credit_limit DESC;

SELECT * FROM cards_data
ORDER BY acct_open_date ASC;


SELECT id, client_id, card_brand, has_chip, credit_limit
FROM cards_data
WHERE has_chip = 'YES'
  AND card_brand = 'Visa'
  AND CAST(REPLACE(credit_limit, '$', '') AS INT) > 20000
ORDER BY num_cards_issued ASC;
