desc employee;
select * from employee;

drop procedure company_insert;
delimiter \\
create procedure company_insert(
	in fname_e varchar(15),
    	in minit_e char(1),
    	in Lname_e varchar(15),
	in Ssn_e char(9),
    	in Bdate_e date,
    	in Address_e varchar(30),
    	in sex_e char(1),
    	in Salary_e decimal(10,2),
    	in Super_ssn_e char(9),
    	in Dno_e int
) 
begin
	if (length(Ssn_e) != 9) then 
		select 'Forneça um CPF válido de 9 digitos e sem pontação' as Message_error;
	else 
		insert into employee(fname,minit,Lname,Ssn,Bdate,Address,sex,Salary,Super_ssn,Dno) values (fname,minit_e,Lname_e,Ssn_e,Bdate_e,Address_e,sex_e,Salary_e,Super_ssn_e,Dno_e);
        select * from employee;
	end if;
end \\
delimiter ;

call company_insert('Maria', 'M', 'Silva', 156797389, '1980/09/21','Rua Silva Dinda 29','F','20000',null,5);

    
