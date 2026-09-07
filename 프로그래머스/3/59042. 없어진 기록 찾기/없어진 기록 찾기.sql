-- 코드를 입력하세요
--입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물은 Id와 이름은 ID 순으로 조회
-- 입양 테이블, 보호소에 들어온 테이블  left join
-- 
SELECT animal_id,o.name
from animal_outs o left join animal_ins i using(animal_id)
where animal_id is not null and i.datetime is null
group by animal_id, o.name
order by animal_id