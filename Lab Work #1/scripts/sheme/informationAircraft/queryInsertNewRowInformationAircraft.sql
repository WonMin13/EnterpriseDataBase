declare @id int
exec @id = dbo.searchFreeIdInformationAircraft @id output
insert into air_base.dbo.informationAircraft values(@id, '���', '��-160', 2, '�������������������', '1981-10-09', '2038-12-02');
