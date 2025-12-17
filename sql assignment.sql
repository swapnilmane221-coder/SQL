create table hospital(
	Hospital_name varchar(100),
	Location varchar(100),
	Department varchar(50),
	Doctors_count int,
	Patients_count int,
	Admission_date date,
	Discharge_date date,
	Medical_expense numeric(10,2)
);

select * from hospital;

copy hospital(Hospital_name,Location,Department,Doctors_count,Patients_count,Admission_date,Discharge_date,Medical_expense)from 'C:\Users\swapn\Downloads\Hospital_Data.csv' delimiter ',' csv header;

select * from hospital;




-- ASSIGNMENT

-- Q1. Total Number of Patients
--  Write an SQL query to find the total number of patients across all hospitals.
select sum(patients_count) as Total_number_of_patients from hospital;

-- Q2. Average Number of Doctors per Hospital
--  Retrieve the average count of doctors available in each hospital.
select avg(doctors_count) as average_number_of_doctor  from hospital;

-- Q3. Top 3 Departments with the Highest Number of Patients
--	Find the top 3 hospital departments that have the highest number of patients.
select department,sum(patients_count) as patient_count from hospital group by department order by patient_count desc limit 3 ;

-- Q4. Hospital with the Maximum Medical Expenses
--	Identify the hospital that recorded the highest medical expenses.
select hospital_name,sum(medical_expense) from hospital group by hospital_name order by sum desc limit 1 ;

-- Q5. Daily Average Medical Expenses
-- Calculate the average medical expenses per day for each hospital.
select hospital_name,avg(medical_expense) from hospital group by hospital_name;

-- Q6. Longest Hospital Stay
--	Find the patient with the longest stay by calculating the difference between Discharge Date and Admission Date.
select hospital_name,department,age(discharge_date,admission_date) as longest_stay from hospital order by longest_stay desc;

-- Q7. Total Patients Treated Per City
--	Count the total number of patients treated in each city.
select location as city,sum(patients_count) as counts from hospital group by location;

-- Q8. Average Length of Stay Per Department
--   Calculate the average number of days patients spend in each department.
SELECT department,AVG(discharge_date - admission_date) AS avg_stay_days FROM hospital GROUP BY department;

-- Q9. Identify the Department with the Lowest Number of Patients.
--	Find the department with the least number of patients.
SELECT MIN(total_patients) AS min_patients FROM (
    SELECT SUM(patients_count) AS total_patients
    FROM hospital
    GROUP BY department
) AS sub;

-- Q10. Monthly Medical Expenses Report
-- Group the data by month and calculate the total medical expenses for each month.
SELECT 
    EXTRACT(MONTH FROM Admission_date) AS Expense_Month,
    EXTRACT(YEAR FROM Admission_date) AS Expense_Year,
    SUM(Medical_expense) AS Total_Monthly_Expense
FROM hospital
GROUP BY Expense_Year, Expense_Month
ORDER BY Expense_Year DESC, Expense_Month DESC;
