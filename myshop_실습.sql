/******************************************************
		실습 데이터베이스 연결 : myshop2019
		실습 내용 - 기본적인 데이터 조회 	 
******************************************************/
show databases;
use myshop2019;
select database();
show tables;
desc 
-- Q01) customer 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
show databases;
use myshop2019;
select database();
show tables;
desc customer;
-- Q02) employee 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
show databases;
use hrdb2019;
select database();
show tables;
desc employee;
-- Q03) product 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
show databases;
use myshop2019;
select database();
show tables;
desc product;
-- Q04) order_header 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
show databases;
use myshop2019;
select database();
show tables;
desc order_header;
-- Q05) order_detail 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
show databases;
use myshop2019;
select database();
show tables;
desc order_detail;
-- Q06) 모든 고객의 아이디, 이름, 지역, 성별, 이메일, 전화번호를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;
select customer_id, customer_name, city, gender, email, phone
from customer;
-- Q07) 모든 직원의 이름, 사원번호, 성별, 입사일, 전화번호를 조회하세요.
use hrdb2019;
select database();
show tables;
desc employee;
select emp_name, emp_id, gender, hire_date, phone
from employee;
-- Q08) 이름이 '홍길동'인 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;
select customer_name, customer_id, gender, city, phone, point
from customer
where customer_name = '홍길동';

-- Q09) 여자 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;
select customer_name, customer_id, gender, city, phone, point
from customer
where gender = 'f';
-- Q10) '울산' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;
select customer_name, customer_id, gender, city, phone, point
from customer
where city = '울산';
-- Q11) 포인트가 500,000 이상인 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;
select customer_name, customer_id, gender, city, phone, concat(format(point,0), ' 포인트') as point
from customer
where point >= 50000;
-- Q12) 이름에 공백이 들어간 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;
select customer_name, customer_id, gender, city, phone, point
from customer
where customer_name like '% %';


-- Q13) 전화번호가 010으로 시작하지 않는 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;
select customer_name, customer_id, gender, city, phone, point
from customer
where left(phone,3) != '010';

-- Q14) 포인트가 500,000 이상 '서울' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;

select customer_name, customer_id, gender, city, phone, concat(format(point,0), 'point') point
from customer
where point >= 500000 and city = '서울';
-- Q15) 포인트가 500,000 이상인 '서울' 이외 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;

select customer_name, customer_id, gender, city, phone, concat(format(point,0), 'point') point
from customer
where format(cast(point as char), 0) >= '500,000' and city != '서울';
-- Q16) 포인트가 400,000 이상인 '서울' 지역 남자 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone, concat(format(point,0), 'point') point
from customer
where point >= 400000 and city = '서울';

-- Q17) '강릉' 또는 '원주' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;

select customer_name, customer_id, gender, city, phone, concat(format(point,0), 'point') point
from customer
where city = '강릉' or city = '원주';



-- Q18) '서울' 또는 '부산' 또는 '제주' 또는 '인천' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;

select customer_name, customer_id, gender, city, phone, concat(format(point,0), 'point') point
from customer
where city in('서울','부산','제주','인천');
-- Q19) 포인트가 400,000 이상, 500,000 이하인 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;

select customer_name, customer_id, gender, city, phone, concat(format(point,0), 'point') point
from customer
where point between 400000 and 500000 ;

-- Q20) 1990년에 출생한 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone,birth_date, concat(format(point,0), 'point') point
from customer
where left(birth_date,3) = '199'
order by birth_date asc;

select customer_name, customer_id, gender, city, phone,birth_date, concat(format(point,0), 'point') point
from customer
where birth_date between '1990-01-01' and '1999-12-31'
order by birth_date asc;

-- Q21) 1990년에 출생한 여자 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone,birth_date, concat(format(point,0), 'point') point
from customer
where left(birth_date,4) = '1990'
order by birth_date asc;


-- Q22) 1990년에 출생한 '대구' 또는 '경주' 지역 남자 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
select customer_name, customer_id, gender, city, phone,birth_date, concat(format(point,0), 'point') point
from customer
where left(birth_date,4) = '1990' and city in ('대구','경주')
order by birth_date asc;


-- Q23) 1990년에 출생한 남자 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
--      단, 홍길동(gildong) 형태로 이름과 아이디를 묶어서 조회하세요.
desc customer;
select concat(customer_name,'(', customer_id,')') as name, gender, city, phone,birth_date, concat(format(point,0), 'point') point
from customer
where left(birth_date,4) = '1990' and gender = 'm'
order by birth_date asc;





-- Q24) 근무중인 직원의 이름, 사원번호, 성별, 전화번호, 입사일를 조회하세요.
use hrdb2019;
select database();
show tables;
desc employee;
select emp_name, emp_id, gender, phone, hire_date
from employee
where retire_date is null;

-- Q25) 근무중인 남자 직원의 이름, 사원번호, 성별, 전화번호, 입사일를 조회하세요.
use hrdb2019;
select database();
show tables;
desc employee;
select emp_name, emp_id, gender, phone, hire_date
from employee
where retire_date is null;

-- Q26) 퇴사한 직원의 이름, 사원번호, 성별, 전화번호, 입사일, 퇴사일를 조회하세요.
use hrdb2019;
select database();
show tables;
desc employee;

select emp_name, emp_id, gender, phone, hire_date, retire_date
from employee
where retire_date is not null;
-- Q28) 2019-01-01 ~ 2019-01-07 기간 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 소계, 배송비, 전체금액을 조회하세요.
--      단, 고객아이디를 기준으로 오름차순 정렬해서 조회하세요.
use myshop2019;
select database();
show tables;
desc order_header;
select  order_id, customer_id, employee_id, order_date, sub_total, delivery_fee, total_due
from order_header
where order_date between '2019-01-01' and '2019-01-07'
order by customer_id;

-- Q29) 2019-01-01 ~ 2019-01-07 기간 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 소계, 배송비, 전체금액을 조회하세요.
--      단, 전체금액을 기준으로 내림차순 정렬해서 조회하세요.
use myshop2019;
select database();
show tables;
desc order_header;


select  order_id, customer_id, employee_id, order_date, sub_total, delivery_fee, total_due
from order_header
where order_date between '2019-01-01' and '2019-01-07'
order by total_due desc;


-- Q30) 2019-01-01 ~ 2019-01-07 기간 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 소계, 배송비, 전체금액을 조회하세요.
--      단, 사원번호를 기준으로 오름차순, 같은 사원번호는 주문일시를 기준으로 내림차순 정렬해서 조회하세요.
use myshop2019;
select database();
show tables;
desc order_header;


select  order_id, customer_id, employee_id, order_date, sub_total, delivery_fee, total_due
from order_header
where order_date between '2019-01-01' and '2019-01-07'
order by employee_id asc, order_date desc ;



/**
	그룹함수
**/
/** customer 테이블 사용 **/
-- Q01) 고객의 포인트 합을 조회하세요.
use myshop2019;
select database();
show tables;
desc customer;
select concat(format(sum(point),0), '포인트') 포인트
from customer;
-- Q02) '서울' 지역 고객의 포인트 합을 조회하세요.
select concat(format(sum(point),0), '포인트') 포인트
from customer
where city = '서울';

-- Q03) '서울' 지역 고객의 수를 조회하세요.
select count(*)
from customer
where city = '서울';
-- Q04) '서울' 지역 고객의 포인트 합과 평균을 조회하세요.
select concat(format(sum(point),0), '포인트') 포인트,concat(format(avg(point),0), '포인트') 포인트
from customer
where city = '서울';
-- Q05) '서울' 지역 고객의 포인트 합, 평균, 최댓값, 최솟값을 조회하세요.
select concat(format(sum(point),0), '포인트') 포인트,concat(format(avg(point),0), '포인트') 포인트,
concat(format(max(point),0), '포인트'),concat(format(min(point),0), '포인트')
from customer
where city = '서울';

-- Q06) 남녀별 고객의 수를 조회하세요.
select (select count(*) from customer where gender = 'm'),(select count(*) from customer where gender = 'f')
from customer
limit 1;

-- Q07) 지역별 고객의 수를 조회하세요.
--      단, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
select city, count(*)
from customer
group by city
order by city asc;
-- Q08) 지역별 고객의 수를 조회하세요.
--      단, 고객의 수가 10명 이상인 행만 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
select city, count(*)
from customer
group by city
having count(*) >= 10;
    
-- Q09) 남녀별 포인트 합을 조회하세요.
desc customer;
select sum(point)
from customer
group by gender;
    
-- Q10) 지역별 포인트 합을 조회하세요.
--      단, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
select city, sum(point)
from customer
group by city
order by city asc;
-- Q11) 지역별 포인트 합을 조회하세요.
--      단, 포인트 합이 1,000,000 이상인 행만 포인트 합을 기준으로 내림차순 정렬해서 조회하세요.
select city 도, sum(point) 섬
from customer
group by 1
having 섬 >= 1000000
order by sum(point) desc;
      
-- Q12) 지역별 포인트 합을 조회하세요.
--      단, 포인트 합을 기준으로 내림차순 정렬해서 조회하세요.
select city, sum(point) 합
from customer
group by city
order by 합 desc;
   

-- Q13) 지역별 고객의 수, 포인트 합을 조회하세요.
--      단, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
select city, count(*), sum(point)
from customer
group by city
order by city ;
-- Q14) 지역별 포인트 합, 포인트 평균을 조회하세요.
--      단, 포인트가 NULL이 아닌 고객을 대상으로 하며, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
select city, sum(point), avg(point)
from customer
where point is not null
group by city
order by city ;
-- Q15) '서울', '부산', '대구' 지역 고객의 지역별, 남녀별 포인트 합과 평균을 조회하세요.
--      단, 지역 이름을 기준으로 오름차순, 같은 지역은 성별을 기준으로 오름차순 정렬해서 조회하세요.
select city, sum(point), avg(point)
from customer
where city in('서울',)
group by city
having city = '서울'
	or city = '부산'
    or city = '대구'
order by city, gender;

/** order_header 테이블 사용 **/
    
-- Q16) 2019년 1월 주문에 대하여 고객아이디별 전체금액 합을 조회하세요.


-- Q17) 주문연도별 전체금액 합계를 조회하세요.

-- Q18) 2019.01 ~ 2019.06 기간 주문에 대하여 주문연도별, 주문월별 전체금액 합을 조회하세요.

-- Q19) 2019.01 ~ 2019.06 기간 주문에 대하여 주문연도별, 주문월별 전체금액 합과 평균을 조회하세요.
use myshop2019;
select database();
select if(month_val is null,'총합계',month_val ),sum(total_due),avg(total_due)
from (select left(order_date,7) as month_val, total_due from order_header where left(order_date,7) between '2019-01' and '2019-06' ) as f
group by month_val with rollup;
select*
from order_header;
-- Q20) 주문연도별, 주문월별 전체금액 합과 평균을 조회하고, rollup 함수를 이용하여 소계와 총계를 출력해주세요.


/**
	테이블 조인 : 기본 SQL 방식, ANSI SQL
*/
-- Q01) 전체금액이 8,500,000 이상인 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 전체금액을 조회하세요.
-- Q02) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 고객이름도 같이 조회되게 수정하세요.
-- Q03) Q01 쿼리를 복사해 붙여 넣은 후 직원이름도 같이 조회되게 수정하세요.
-- Q04) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 고객이름, 직원이름도 같이 조회되게 수정하세요.
-- Q05) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 전체금액이 8,500,000 이상인 '서울' 지역 고객만 조회되게 수정하세요.
-- Q06) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 전체금액이 8,500,000 이상인 '서울' 지역 '남자' 고객만 조회되게 수정하세요.
-- Q07) 주문수량이 30개 이상인 주문의 주문번호, 상품코드, 주문수량, 단가, 지불금액을 조회하세요.
-- Q08) 위에서 작성한 쿼리문을 복사해서 붙여 넣은 후 상품이름도 같이 조회되도록 수정하세요.
-- Q09) 상품코드, 상품이름, 소분류아이디를 조회하세요.
-- Q10) 위에서 작성한 쿼리문을 복사해서 붙여 넣은 후 소분류이름, 대분류아이디가 조회되게 수정하세요.
-- Q11) 다정한 사원이 2019년에 주문한 상품명을 모두 출력해주세요.
-- Q12) 청소기를 구입한 고객아이디, 사원번호, 주문번호, 주문일시를 조회하세요.
use myshop2019;
select datebase();
show tables;
select*
from customer left outer join order_header o
	on c.customer_id = o.customer_id
    left outer join employee e
    on e.employee_id = o.employee_id
    left outer join order_detail od
    on o.orde_id




