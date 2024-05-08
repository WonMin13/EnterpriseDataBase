bulk insert air_base.dbo.activeAircraft
from 'D:\DATA2\small0.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.informationAircraft
from 'D:\DATA2\small1.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.airport
from 'D:\DATA2\small2.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.runway
from 'D:\DATA2\small3.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.aircompany
from 'D:\DATA2\small4.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.passenger
from 'D:\DATA2\small5.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.clientAircompany
from 'D:\DATA2\small6.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
