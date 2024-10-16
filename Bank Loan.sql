create database loan_data;

select*from financial_loan;

/* Changing Issue_date field format*/

ALTER TABLE financial_loan 
MODIFY issue_date DATE;


ALTER TABLE financial_loan ADD issue_date_converted DATE;

UPDATE financial_loan 
SET issue_date_converted = STR_TO_DATE(issue_date, '%d-%m-%Y');

SELECT issue_date, issue_date_converted FROM financial_loan LIMIT 10;

ALTER TABLE financial_loan DROP COLUMN issue_date;

ALTER TABLE financial_loan RENAME COLUMN issue_date_converted TO issue_date;

/*Total Loan applications*/

select
count(id) as total_loan_applications
from financial_loan;

/*MTD Loan Applications*/

select
count(id) as total_loan_applications
from financial_loan
where MONTH(issue_date)=12;

/*PMTD Loan Applications*/

select
count(id) as total_loan_applications
from financial_loan
where MONTH(issue_date)=11;

/*Total Funded Amount*/

select
sum(loan_amount) as Total_Funded_Amount
from financial_loan;
 
 
/*MTD Total Funded Amount*/

select
sum(loan_amount) as Total_Funded_Amount
from financial_loan
where month(issue_date)=12;

/*PMTD Total Funded Amount*/

select
sum(loan_amount) as Total_Funded_Amount
from financial_loan
where month(issue_date)=11;

/*
Total Amount Received*/

select
sum(total_payment) as Total_Amount_Collected
from financial_loan;

/* MTD Total Amount Received */

select
sum(total_payment) as Total_Amount_Collected
from financial_loan
where month(issue_date)=12;

/* PMTD Total Amount Received */

select
sum(total_payment) as Total_Amount_Collected
from financial_loan
where month(issue_date)=11;

/* Average Interest Rate*/

select 
round(avg(int_rate)*100,2) as Avg_Interest_Rate from financial_loan;

/* MTD Average Interest*/

select 
round(avg(int_rate)*100,2) as Avg_Interest_Rate from financial_loan
where month(issue_date)=12;

/*PMTD Average Interest*/

select 
round(avg(int_rate)*100,2) as Avg_Interest_Rate from financial_loan
where month(issue_date)=11;


/* Avg DTI*/

select round(avg(dti)*100,2) as Avg_DTI from financial_loan;

/*MTD AVG_DTI*/

select round(avg(dti)*100,2) as Avg_DTI from financial_loan
where month(issue_date)=12;

/*PMTF AVG_DTI*/

select round(avg(dti)*100,2) as Avg_DTI from financial_loan
where month(issue_date)=11;




* Good Loan Applications*/

select count(id) as Good_Loan_Applications from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

/* Good loan Funded Amount */

select sum(loan_amount) as Good_Loan_Funded_Amount from financial_loan
where  loan_status = 'Fully Paid' or loan_status = 'Current';

/*Good Loan Percentage*/

select
(count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*100)/
count(id) as Good_Loan_Percentage
from financial_loan;

/*Good Loan Amount Recieved*/

select sum(total_payment) as Good_Loan_Amount_Recieved from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';




/* Bad Loan Applications*/

select count(id) as Bad_Loan_Applications from financial_loan
where loan_status = 'Charged Off';

/* Bad loan Funded Amount */

select sum(loan_amount) as Bad_Loan_Funded_Amount from financial_loan
where  loan_status = 'Charged Off';

/*Bad Loan Percentage*/

select
(count(case when loan_status  = 'Charged Off' then id end)*100)/
count(id) as Bad_Loan_Percentage
from financial_loan;

/*Bad Loan Amount Recieved*/

select sum(total_payment) as Bad_Loan_Amount_Recieved from financial_loan
where loan_status = 'Charged Off';


/*Loan Status*/

select
loan_status,
count(id) as LoanCount,
sum(total_payment) as Total_Amount_Recieved,
sum(loan_amount) as Total_Funded_Amount,
avg(int_rate*100) as Interest_Rate,
avg(dti*100) as DTI
from
financial_loan
group by 1;

/*MTD Loan status*/

select
loan_status,
count(id) as LoanCount,
sum(total_payment) as Total_Amount_Recieved,
sum(loan_amount) as Total_Funded_Amount,
avg(int_rate*100) as Interest_Rate,
avg(dti*100) as DTI
from
financial_loan
where month(issue_date)=12
group by 1;

/*Bank Loan Report*/

select
month(issue_date) as month_number,
monthname(issue_date) as Month_Name,
count(id) as Total_Loan_Applications,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Amount_Recieved
from financial_loan
group by 1,2
order by 1;

/*State*/

select
address_state as State,
count(id) as Total_Loan_Applicatons,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Payment_Recieved
from financial_loan
group by 1
order by 1;


/*Term*/

select
term as Term,
count(id) as Total_Loan_Applicatons,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Payment_Recieved
from financial_loan
group by 1
order by 1;

/*Employee Lenght*/

select
emp_length as Employee_Length,
count(id) as Total_Loan_Applicatons,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Payment_Recieved
from financial_loan
group by 1
order by 1;

/*Purpose*/

select 
purpose as Purpose,
count(id) as Total_Loan_Applicatons,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Payment_Recieved
from financial_loan
group by 1
order by 1;

/*Home Ownership*/

select
home_ownership as Home_Ownership,
count(id) as Total_Loan_Applicatons,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Payment_Recieved
from financial_loan
group by 1
order by 1;

