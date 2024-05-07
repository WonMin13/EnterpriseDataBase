# Структура папок
[Database](https://github.com/WonMin13/EnterpriseDataBase/tree/main/Lab%20Work%20%231/scripts/database) - содержит скрипты для работы с самой базой данных
[Scheme](https://github.com/WonMin13/EnterpriseDataBase/tree/main/Lab%20Work%20%231/scripts/sheme) - содержит скрипты для работы со схемой базой данных (таблицами)

# Описание ER-Модели
В качестве бизнес-модели была выбрана модель авиационных перевозок. Схема модели представлена на фото.
![image](https://github.com/WonMin13/EnterpriseDataBase/assets/154375695/c6903253-2846-4c44-b0d6-7fbb158c42fb)

# Описание сущностей ER-Модели
## Действующий самолет
### Active Aircraft 

|	  Название поля |	    Тип данных   |   	    Описание       |       	Ключ         |                             
|:----------------|:----------------:|:---------------------:|--------------------:|                       
|  id_activeAircraft  |  int  |     |      |
|  active_label  |    |   bool  |      |
|  departure_airport   |   VARCHAR()
String   |       |       |
|   arrival_airport  |   VARCHAR()
String   |       |       |




|         ScreenShot              |
|:-------------------------------:|
|![image](https://github.com/WonMin13/EnterpriseDataBase/assets/154375695/590bc556-af55-4e8a-b68c-576e5e36c60d)|
