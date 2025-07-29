/******************************************************
		실습 데이터베이스 연결 : myshop2019
		실습 내용 - 기본적인 데이터 조회 	 
******************************************************/
-- Q01) customer 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
-- Q02) employee 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
-- Q03) product 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
-- Q04) order_header 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
-- Q05) order_detail 테이블 모든 행과 열을 조회하고 어떤 열들이 있는지, 데이터 형식은 어떻게 되는지 살펴보세요.
-- Q06) 모든 고객의 아이디, 이름, 지역, 성별, 이메일, 전화번호를 조회하세요.
-- Q07) 모든 직원의 이름, 사원번호, 성별, 입사일, 전화번호를 조회하세요.
-- Q08) 이름이 '홍길동'인 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q09) 여자 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q10) '울산' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q11) 포인트가 500,000 이상인 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q12) 이름에 공백이 들어간 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q13) 전화번호가 010으로 시작하지 않는 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q14) 포인트가 500,000 이상 '서울' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q15) 포인트가 500,000 이상인 '서울' 이외 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q16) 포인트가 400,000 이상인 '서울' 지역 남자 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q17) '강릉' 또는 '원주' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q18) '서울' 또는 '부산' 또는 '제주' 또는 '인천' 지역 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q19) 포인트가 400,000 이상, 500,000 이하인 고객의 이름, 아이디, 성별, 지역, 전화번호, 포인트를 조회하세요.
-- Q20) 1990년에 출생한 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
-- Q21) 1990년에 출생한 여자 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
-- Q22) 1990년에 출생한 '대구' 또는 '경주' 지역 남자 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
-- Q23) 1990년에 출생한 남자 고객의 이름, 아이디, 성별, 지역, 전화번호, 생일, 포인트를 조회하세요.
--      단, 홍길동(gildong) 형태로 이름과 아이디를 묶어서 조회하세요.
-- Q24) 근무중인 직원의 이름, 사원번호, 성별, 전화번호, 입사일를 조회하세요.
-- Q25) 근무중인 남자 직원의 이름, 사원번호, 성별, 전화번호, 입사일를 조회하세요.
-- Q26) 퇴사한 직원의 이름, 사원번호, 성별, 전화번호, 입사일, 퇴사일를 조회하세요.

-- Q28) 2019-01-01 ~ 2019-01-07 기간 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 소계, 배송비, 전체금액을 조회하세요.
--      단, 고객아이디를 기준으로 오름차순 정렬해서 조회하세요.
    
-- Q29) 2019-01-01 ~ 2019-01-07 기간 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 소계, 배송비, 전체금액을 조회하세요.
--      단, 전체금액을 기준으로 내림차순 정렬해서 조회하세요.

-- Q30) 2019-01-01 ~ 2019-01-07 기간 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 소계, 배송비, 전체금액을 조회하세요.
--      단, 사원번호를 기준으로 오름차순, 같은 사원번호는 주문일시를 기준으로 내림차순 정렬해서 조회하세요.

/**
	그룹함수
**/
/** customer 테이블 사용 **/
-- Q01) 고객의 포인트 합을 조회하세요.

-- Q02) '서울' 지역 고객의 포인트 합을 조회하세요.

-- Q03) '서울' 지역 고객의 수를 조회하세요.

-- Q04) '서울' 지역 고객의 포인트 합과 평균을 조회하세요.
     
-- Q05) '서울' 지역 고객의 포인트 합, 평균, 최댓값, 최솟값을 조회하세요.

-- Q06) 남녀별 고객의 수를 조회하세요.

-- Q07) 지역별 고객의 수를 조회하세요.
--      단, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.

 
-- Q08) 지역별 고객의 수를 조회하세요.
--      단, 고객의 수가 10명 이상인 행만 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
   
    
-- Q09) 남녀별 포인트 합을 조회하세요.
    
-- Q10) 지역별 포인트 합을 조회하세요.
--      단, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.
    
-- Q11) 지역별 포인트 합을 조회하세요.
--      단, 포인트 합이 1,000,000 이상인 행만 포인트 합을 기준으로 내림차순 정렬해서 조회하세요.

      
-- Q12) 지역별 포인트 합을 조회하세요.
--      단, 포인트 합을 기준으로 내림차순 정렬해서 조회하세요.
   

-- Q13) 지역별 고객의 수, 포인트 합을 조회하세요.
--      단, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.


-- Q14) 지역별 포인트 합, 포인트 평균을 조회하세요.
--      단, 포인트가 NULL이 아닌 고객을 대상으로 하며, 지역 이름을 기준으로 오름차순 정렬해서 조회하세요.

-- Q15) '서울', '부산', '대구' 지역 고객의 지역별, 남녀별 포인트 합과 평균을 조회하세요.
--      단, 지역 이름을 기준으로 오름차순, 같은 지역은 성별을 기준으로 오름차순 정렬해서 조회하세요.


/** order_header 테이블 사용 **/
    
-- Q16) 2019년 1월 주문에 대하여 고객아이디별 전체금액 합을 조회하세요.


-- Q17) 주문연도별 전체금액 합계를 조회하세요.

-- Q18) 2019.01 ~ 2019.06 기간 주문에 대하여 주문연도별, 주문월별 전체금액 합을 조회하세요.

-- Q19) 2019.01 ~ 2019.06 기간 주문에 대하여 주문연도별, 주문월별 전체금액 합과 평균을 조회하세요.

-- Q20) 주문연도별, 주문월별 전체금액 합과 평균을 조회하고, rollup 함수를 이용하여 소계와 총계를 출력해주세요.


/**
	테이블 조인 : 기본 SQL 방식, ANSI SQL
*/
use myshop2019;
select database();
show tables;
-- Q01) 전체금액이 8,500,000 이상인 주문의 주문번호, 고객아이디, 사원번호, 주문일시, 전체금액을 조회하세요.
select order_id, customer_id,employee_id,order_date,total_due
from order_header
where total_due >= 8500000
order by order_date;
-- Q02) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 고객이름도 같이 조회되게 수정하세요.
select  e1.order_id, e1.customer_id,e2.customer_name,e1.employee_id,e1.order_date,e1.total_due
from
(select order_id, customer_id,employee_id,order_date,total_due
from order_header
where total_due >= 8500000
order by order_date
) e1,
(select customer_id,customer_name
from customer
) e2
where e1.customer_id = e2.customer_id;
-- Q03) Q01 쿼리를 복사해 붙여 넣은 후 직원이름도 같이 조회되게 수정하세요.
select  e1.order_id, e1.customer_id, e2.customer_name,e1.employee_id,e3.employee_name,e1.order_date,e1.total_due
from
(select order_id,customer_id,employee_id,order_date,total_due
from order_header
where total_due >= 8500000
order by order_date
) e1,
(select customer_id,customer_name
from customer
) e2,
(select employee_id,employee_name
from employee) e3
where e1.customer_id = e2.customer_id
and e1.employee_id = e3.employee_id;
-- Q04) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 고객이름, 직원이름도 같이 조회되게 수정하세요.
select  e1.order_id, e1.customer_id,e2.customer_name,e1.employee_id,e1.order_date,e1.total_due
from
(select order_id, customer_id,employee_id,order_date,total_due
from order_header
where total_due >= 8500000
order by order_date
) e1,
(select customer_id,customer_name
from customer
) e2
where e1.customer_id = e2.customer_id;
-- Q03) Q01 쿼리를 복사해 붙여 넣은 후 직원이름도 같이 조회되게 수정하세요.
select  e1.order_id, e1.customer_id, e2.customer_name,e1.employee_id,e3.employee_name,e1.order_date,e1.total_due
from
(select order_id,customer_id,employee_id,order_date,total_due
from order_header
where total_due >= 8500000
order by order_date
) e1,
(select customer_id,customer_name
from customer
) e2,
(select employee_id,employee_name
from employee) e3
where e1.customer_id = e2.customer_id
and e1.employee_id = e3.employee_id;
-- Q05) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 전체금액이 8,500,000 이상인 '서울' 지역 고객만 조회되게 수정하세요.
select  e1.order_id, e1.customer_id,e2.customer_name,e1.employee_id,e1.order_date,e1.total_due
from
(select order_id, customer_id,employee_id,order_date,total_due
from order_header
where total_due >= 8500000
order by order_date
) e1,
(select customer_id,customer_name
from customer
) e2
where e1.customer_id = e2.customer_id;
-- Q03) Q01 쿼리를 복사해 붙여 넣은 후 직원이름도 같이 조회되게 수정하세요.
select  e1.order_id, e1.customer_id, e2.customer_name,e1.employee_id,e3.employee_name,e1.order_date,e1.total_due
from
(select order_id,customer_id,employee_id,order_date,total_due
from order_header
where total_due >= 8500000
order by order_date
) e1,
(select customer_id,customer_name
from customer
) e2,
(select employee_id,employee_name
from employee) e3
where e1.customer_id = e2.customer_id
and e1.employee_id = e3.employee_id;
-- Q06) 위에서 작성한 쿼리문을 복사해 붙여 넣은 후 전체금액이 8,500,000 이상인 '서울' 지역 '남자' 고객만 조회되게 수정하세요.
select  e1.order_id, e1.customer_id, e2.customer_name,e4.city,e4.gender,e1.employee_id,e3.employee_name,e1.order_date,e1.total_due
from
(select order_id,customer_id,employee_id,order_date,total_due
from order_header
where total_due >= 8500000
order by order_date
) e1,
(select customer_id,customer_name
from customer
) e2,
(select employee_id,employee_name
from employee) e3,
(select customer_id,city,gender
from customer 
where city = '서울'
and gender = 'm'
) e4
where e1.customer_id = e2.customer_id
and e1.employee_id = e3.employee_id
and e1.customer_id = e4.customer_id;



-- Q07) 주문수량이 30개 이상인 주문의 주문번호, 상품코드, 주문수량, 단가, 지불금액을 조회하세요.
select e1.order_id, e1.total_sum,e2.product_id,e2.order_qty,unit_price
from
(
select od.order_id,sum(od.order_qty) as total_sum
from order_detail od
group by od.order_id
having sum(od.order_qty) >= 30
) e1,
(
select order_id,product_id,order_qty,unit_price
from order_detail 
) e2
where e1.order_id = e2.order_id
order by e1.order_id;
-- Q08) 위에서 작성한 쿼리문을 복사해서 붙여 넣은 후 상품이름도 같이 조회되도록 수정하세요.
select e1.order_id, e1.total_sum,e2.product_id,e3.product_name,e2.order_qty,unit_price
from
(
select od.order_id,sum(od.order_qty) as total_sum
from order_detail od
group by od.order_id
having sum(od.order_qty) >= 30
) e1,
(
select order_id,product_id,order_qty,unit_price
from order_detail 
) e2,
(select product_id,product_name
from product) e3
where e1.order_id = e2.order_id
and e2.product_id = e3.product_id
order by e1.order_id;

-- Q09) 상품코드, 상품이름, 소분류아이디를 조회하세요.
select p.product_id,p.product_name,sc.sub_category_id
from product p,sub_category sc
where p.sub_category_id = sc.sub_category_id;
-- Q10) 위에서 작성한 쿼리문을 복사해서 붙여 넣은 후 소분류이름, 대분류아이디가 조회되게 수정하세요.
select p.product_id,p.product_name,sc.sub_category_id,sc.sub_category_name,ct.category_id
from product p,sub_category sc,category ct
where p.sub_category_id = sc.sub_category_id
and sc.category_id = ct.category_id;
-- Q11) 다정한 사원이 2019년에 주문한 상품명을 모두 출력해주세요.

-- Q12) 청소기를 구입한 고객아이디, 사원번호, 주문번호, 주문일시를 조회하세요.
select c.customer_id,o.employee_id,o.order_id,o.order_date
from customer c,order_header o,order_detail od,product p
where c.customer_id = o.customer_id
and  o.order_id = od.order_id
and  od.product_id = p.product_id;

/**
	서브쿼리
*/
-- Q13) 'mtkim', 'odoh', 'soyoukim', 'winterkim' 고객 주문의 주문번호, 고객아이디, 주문일시, 전체금액을 조회하세요. 
select o.order_id,o.customer_id,o.order_date,o.total_due
from order_header o
where o.customer_id in('mtkim', 'odoh', 'soyoukim', 'winterkim');
-- Q14) '전주' 지역 고객의 아이디를 조회하세요.   
select o.customer_id 
from order_header o
where o.customer_id in (select customer_id from customer where city = '전주');
 

-- Q15) 위 두 쿼리문을 조합해서 하위 쿼리를 사용해 '전주' 지역 고객 주문의 주문번호, 고객아이디, 주문일시, 전체금액을 조회하세요.
select order_id,customer_id,order_date,total_due
from order_header
where order_id in
(select o.order_id 
from order_header o
where o.customer_id in (select customer_id from customer where city = '전주'));

-- Q16) 고객의 포인트 최댓값을 조회하세요.
select customer_id,point,rank() over(order by point desc) as rnk
from customer
group by customer_id
limit 1;
-- Q17) 하위 쿼리를 사용해 가장 포인트가 많은 고객의 이름, 아이디, 등록일, 포인트를 조회하세요.

select e1.customer_id,e1.customer_name,e1.register_date,e1.point
from (select customer_id,customer_name,point,rank() over(order by point desc) as rnk,register_date
from customer
limit 1) e1;

-- Q18) 하위 쿼리를 사용해 홍길동(gdhong) 고객보다 포인트가 많은 고객 이름, 아이디, 등록일, 포인트를 조회하세요.
select customer_id,customer_name,register_date,point
from customer
where point >
(select point
from customer
where customer_name = '홍길동');
-- Q19) 하위 쿼리를 사용해 홍길동(gdhong) 고객과 같은 지역의 고객 이름, 아이디, 지역, 등록일, 포인트를 조회하세요.
--      단, 고객 이름을 기준으로 오름차순 정렬해서 조회하세요.
select customer_id,city,customer_name,register_date,point
from customer
where city = 
(select city
from customer
where customer_name = '홍길동')
and customer_name != '홍길동' ;