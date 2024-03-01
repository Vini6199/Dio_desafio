use company_constraints;
select * from employee;

-- drop trigger super_ssn_check_4;
delimiter \\
create trigger super_ssn_check_4 before insert on company_constraints.employee
for each row
	begin 
		case new.Dno
            when 4 then set new.Super_ssn = '887654321';
		end case;
end \\
delimiter ;

insert into employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
	values ('Maria', 'M', 'Silva', '156797389', '1980-09-21','Rua Silva Dinda 29','F','20000',NULL,'4');
    
desc employee;