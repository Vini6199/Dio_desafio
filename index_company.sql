use company_constraints;
show tables;
desc employee;

-- Qual o departamento com maior número de pessoas? 
drop index index_dept on department;
create index index_dept on department(Dnumber) using hash;

select count(Ssn) as Numero_de_funcionários, Dnumber as department_number from employee e
	inner join department d on d.Dnumber = e.Dno
    group by e.Dno;
    
-- Quais são os departamentos por cidade? 
select distinct Dlocation local_do_departamento, d.Dnumber departamento from dept_locations l
	inner join department d on l.Dnumber = d.Dnumber;
    
-- Relação de empregrados por departamento 
select concat(Fname,' ',Lname) as Name, Dno as dept_empregado, Dname department_name from employee
	inner join department on Dno = Dnumber;