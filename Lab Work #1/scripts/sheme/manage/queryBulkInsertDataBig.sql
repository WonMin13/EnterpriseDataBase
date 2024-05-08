bulk insert air_base.dbo.activeAircraft
from 'D:\DATA2\big0.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.informationAircraft
from 'D:\DATA2\big1.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.airport
from 'D:\DATA2\big2.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.runway
from 'D:\DATA2\big3.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.aircompany
from 'D:\DATA2\big4.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.passenger
from 'D:\DATA2\big5.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
bulk insert air_base.dbo.clientAircompany
from 'D:\DATA2\big6.txt'
    with
    (
	datafiletype = 'widechar',
    fieldterminator = ' ',
    rowterminator = '\n'
    );
