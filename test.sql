
-- 원하는 주차별 쿼리
SELECT SEC_TO_TIME(AVG(TIME_TO_SEC(start_time))) as st
FROM Study_record
WHERE
WEEK(`date`,5) - 
WEEK(DATE_SUB(`date`,INTERVAL DAYOFMONTH(`date`)-1 DAY),5) + 1
=
3
AND
MONTH(`date`)
=
1


SELECT
WEEK(NOW(),5) - 
WEEK(DATE_SUB(NOW(),INTERVAL DAYOFMONTH(NOW())-1 DAY),5) + 1


--  주차별 쿼리
SELECT
WEEK('20220531',5) - 
WEEK(DATE_SUB('20220531',INTERVAL DAYOFMONTH('20220531')-1 DAY),5) + 1

SELECT ('2022-05-18');
SELECT
WEEK('2022-05-18',5) - 
WEEK(DATE_SUB('2022-05-18',INTERVAL DAYOFMONTH('2022-05-18')-1 DAY),5) + 1

SELECT reply_board_num
FROM Study_share_reply;

SELECT SEC_TO_TIME(AVG(TIME_TO_SEC(start_time))) as st,
AVG(TIMESTAMPDIFF(MINUTE,start_time,end_time))
FROM Study_record
WHERE
MONTH(`date`)
=
6
AND
id = 'smpts00'