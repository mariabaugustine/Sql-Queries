create procedure sp_GetEmployeesDepartmentId(@id int)
as
begin
select e.ID,e.Name,d.DepartmentName from Employees e
join Department d on e.DepartmentId=d.ID
where d.ID=@id
end

go


execute sp_GetEmployeesDepartmentId 3

go
