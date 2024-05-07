declare @airport varchar(50) = '������',
  @label varchar(5) ='True',
  @StartRow int = 1, 
  @RowsPerPage int = 1000000;
--����� ���������� �������
while (select COUNT(air_base.dbo.activeAircraft.id_activeAircraft) from air_base.dbo.activeAircraft 
	where arrival_airport like @airport) >= @StartRow  
begin
    select 
		air_base.dbo.activeAircraft.id_activeAircraft,
		air_base.dbo.activeAircraft.active_label,
		air_base.dbo.activeAircraft.departure_airport,
		air_base.dbo.activeAircraft.arrival_airport
	from air_base.dbo.activeAircraft 
	where arrival_airport like @airport
    order by air_base.dbo.activeAircraft.id_activeAircraft   
        offset @StartRow - 1 rows   
        fetch next @RowsPerPage rows ONLY;
set @StartRow = @StartRow + @RowsPerPage;  
continue
end;
--����� ���������� ������
while (select COUNT(air_base.dbo.activeAircraft.id_activeAircraft) from air_base.dbo.activeAircraft where departure_airport like @airport
    order by air_base.dbo.activeAircraft.id_activeAircraft) >= @StartRow  
BEGIN
    select 
		air_base.dbo.activeAircraft.id_activeAircraft,
		air_base.dbo.activeAircraft.active_label,
		air_base.dbo.activeAircraft.departure_airport,
		air_base.dbo.activeAircraft.arrival_airport
	from air_base.dbo.activeAircraft where departure_airport like @airport
    order by air_base.dbo.activeAircraft.id_activeAircraft   
        offset @StartRow - 1 rows   
        fetch next @RowsPerPage rows ONLY;
set @StartRow = @StartRow + @RowsPerPage;  
continue
end;
--����� ����������� ���������
while (select COUNT(air_base.dbo.activeAircraft.id_activeAircraft) from air_base.dbo.activeAircraft 
	where active_label like @label) >= @StartRow  
begin
    select 
		air_base.dbo.activeAircraft.id_activeAircraft,
		air_base.dbo.activeAircraft.active_label,
		air_base.dbo.activeAircraft.departure_airport,
		air_base.dbo.activeAircraft.arrival_airport
	from air_base.dbo.activeAircraft 
	where active_label like @label
    order by air_base.dbo.activeAircraft.id_activeAircraft   
        offset @StartRow - 1 rows   
        fetch next @RowsPerPage rows ONLY;
set @StartRow = @StartRow + @RowsPerPage;  
continue
end;