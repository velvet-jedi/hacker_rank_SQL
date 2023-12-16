select c.company_code, c.founder, count(distinct(lead_manager_code)) as lmc, count(distinct(senior_manager_code)) as smc, count(distinct(manager_code)) as mc, count(distinct(employee_code)) as ec
from Employee as e
inner join
Company as c
on e.company_code=c.company_code
group by c.company_code, c.founder
order by c.company_code;


/*
SELECT C.company_code, C.founder, 
    count(DISTINCT(L.lead_manager_code)), count(distinct(S.senior_manager_code)), 
    count(distinct(M.manager_code)), count(distinct(E.employee_code)) from Company C, Lead_Manager L, Senior_Manager S, Manager M, Employee E where C.company_code = L.company_code and L.lead_manager_code = S.lead_manager_code and S.senior_manager_code = M.senior_manager_code and M.manager_code = E.manager_code ORDER BY C.COMPANY_CODE
*/

-- 1) ALIAS for all tables--
-- 2) What do you need to print? GO STEP WISE --
-- whatever is selected should group the query --
-- company table and lead manager table have c1 in common-- 
-- group by both company and founder! WHY? because whenever you give out a mix of aggregated columns (used functions like count, sum or avg) with non- aggregate columns (company code and founder in this case) you group by the columns that are non -aggregated
-- we need to order by company code --
