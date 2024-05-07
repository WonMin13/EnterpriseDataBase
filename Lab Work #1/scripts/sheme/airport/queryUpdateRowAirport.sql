declare @count_runway  int = 0,
 @class_airport varchar(50) = '�������',
 @dislocation varchar(50) = '',
 @name varchar(50) = '',
 @id int = 0;
-- ���������� ����� ����� �� ������ ��������
update air_base.dbo.airport
set air_base.dbo.airport.count_runway = @count_runway
where air_base.dbo.airport.class_airport like @class_airport
-- ���������� ������ �������� �� ����� � ���������� ���������
update air_base.dbo.airport
set air_base.dbo.airport.class_airport = @class_airport
where air_base.dbo.airport.dislocation like @dislocation and air_base.dbo.airport.name_airport like @name
-- ���������� ������ �������� �� id
update air_base.dbo.airport
set air_base.dbo.airport.class_airport = @class_airport
where air_base.dbo.airport.id_airport = @id
-- ���������� ����� ���������
update air_base.dbo.airport
set air_base.dbo.airport.name_airport = @name
where air_base.dbo.airport.id_airport = @id and air_base.dbo.airport.dislocation = @dislocation and air_base.dbo.airport.class_airport like @class_airport