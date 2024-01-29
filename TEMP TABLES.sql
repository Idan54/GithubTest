CREATE Table #temp_employee
(EmployeeId varchar(50),FirstName varchar(50),LastName varchar(50),Age int,Gender varchar(50))


select* from #temp_employee

INSERT INTO #temp_employee
SELECT* FROM EmployeeDemographics

 DROP TABLE IF EXISTS #temp_employee2
 CREATE TABLE #temp_employee2
 (JobTitle varchar(50),EmployeesPerJob int,AvgAge int,AvgSalary int)

 INSERT INTO #temp_employee2
 SELECT JobTitle ,COUNT(JobTitle),AVG(Age),AVG(Salary)
 FROM EmployeeDemographics a JOIN EmployeeSalary b ON a.EmployeeId=b.EmployeeID
 Group by JobTitle

 SELECT* FROM #temp_employee2