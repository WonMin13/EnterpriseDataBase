declare @id int
exec @id = dbo.searchFreeIdAirport @id output
insert into air_base.dbo.airport values(@id, '������', '�������', '�������', 4);
