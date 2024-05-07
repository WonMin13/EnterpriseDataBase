declare @active_label varchar(50) = 'True';
declare @class_runway int = 1;
declare @square_runway int = 35000;
declare @id int = 0;
declare @lenght int = 0;
declare @width int = 0;
-- ���������� ���� ���������� �� ������ ������
update air_base.dbo.runway
set air_base.dbo.runway.active_label = @active_label
where air_base.dbo.runway.class_runway <= @class_runway
-- ���������� ���� ������ ������ �� ������� ������
update air_base.dbo.runway
set air_base.dbo.runway.class_runway = @class_runway
where air_base.dbo.runway.length_runway*air_base.dbo.runway.width_runway < @square_runway
--���������� ����� ������ �� id
update air_base.dbo.runway
set air_base.dbo.runway.length_runway = @lenght
where air_base.dbo.runway.id_runway = @id
--���������� ������ ������ �� id
update air_base.dbo.runway
set air_base.dbo.runway.width_runway = @width
where air_base.dbo.runway.id_runway = @id