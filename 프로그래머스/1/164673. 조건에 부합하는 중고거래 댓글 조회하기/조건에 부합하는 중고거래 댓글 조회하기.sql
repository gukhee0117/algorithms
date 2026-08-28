-- 코드를 입력하세요
SELECT a.title,a.board_id, b.reply_id,b.writer_id,b.contents,b.created_date
from USED_GOODS_BOARD a join USED_GOODS_REPLY b using(BOARD_ID)
where year(a.CREATED_DATE)=2022 and month(a.CREATED_DATE)=10
order by b.CREATED_DATE, a.title