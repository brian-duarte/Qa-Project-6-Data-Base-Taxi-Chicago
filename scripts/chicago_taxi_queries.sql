Base de datos

Ejercicio 1
Número de automóviles: 5529

chicago_taxi=# SELECT * FROM cabs;   
chicago_taxi=# SELECT COUNT(DISTINCT cab_id) FROM cabs;
 count 
-------
  5529
(1 row)


La solicitud que utilizaste para resolver la tarea.
chicago_taxi=# SELECT COUNT(DISTINCT cab_id) FROM cabs;



Ejercicio 2
Lista de las compañías con menos de 100 automóviles.
                 company_name                 | cnt 
----------------------------------------------+-----
 Nova Taxi Affiliation Llc                    |  97
 Patriot Taxi Dba Peace Taxi Associat         |  89
 Blue Diamond                                 |  85
 Checker Taxi Affiliation                     |  81
 Chicago Medallion Management                 |  80
 Chicago Independents                         |  69
 24 Seven Taxi                                |  67
 Checker Taxi                                 |  60
 American United                              |  55
 Chicago Medallion Leasing INC                |  53
 Top Cab Affiliation                          |  49
 KOAM Taxi Association                        |  48
 Chicago Taxicab                              |  38
 Norshore Cab                                 |  34
 Gold Coast Taxi                              |  20
 Metro Group                                  |  20
 Service Taxi Association                     |  18
 5 Star Taxi                                  |  14
 Metro Jet Taxi A                             |   8
 American United Taxi Affiliation             |   8
 Setare Inc                                   |   7
 Leonard Cab Co                               |   5
 5874 - 73628 Sergey Cab Corp.                |   1
 0118 - 42111 Godfrey S.Awir                  |   1
 6057 - 24657 Richard Addo                    |   1
 6574 - Babylon Express Inc.                  |   1
 6742 - 83735 Tasha ride inc                  |   1
 6743 - 78771 Luhak Corp                      |   1
 Chicago Star Taxicab                         |   1
 5997 - 65283 AW Services Inc.                |   1
 1085 - 72312 N and W Cab Co                  |   1
 1469 - 64126 Omar Jada                       |   1
 2092 - 61288 Sbeih company                   |   1
 2192 - 73487 Zeymane Corp                    |   1
 2241 - 44667 - Felman Corp, Manuel Alonso    |   1
 2733 - 74600 Benny Jona                      |   1
 2809 - 95474 C & D Cab Co Inc.               |   1
 2823 - 73307 Lee Express Inc                 |   1
 3011 - 66308 JBL Cab Inc.                    |   1
 3094 - 24059 G.L.B. Cab Co                   |   1
 3556 - 36214 RC Andrews Cab                  |   1
 3591 - 63480 Chuks Cab                       |   1
 3620 - 52292 David K. Cab Corp.              |   1
 3623 - 72222 Arrington Enterprises           |   1
 3721 - Santamaria Express, Alvaro Santamaria |   1
 4053 - 40193 Adwar H. Nikola                 |   1
 4615 - 83503 Tyrone Henderson                |   1
 4623 - 27290 Jay Kim                         |   1
 5006 - 39261 Salifu Bawa                     |   1
 5062 - 34841 Sam Mestas                      |   1
 5074 - 54002 Ahzmi Inc                       |   1
(51 rows)
La solicitud que te ayudó a resolver la tarea.
chicago_taxi=# SELECT company_name, COUNT(DISTINCT cab_id) AS cnt FROM cabs GROUP BY company_name HAVING COUNT(DISTINCT cab_id) < 100 ORDER BY cnt DESC;

Ejercicio 3
La tabla con los datos para el periodo especificado.
         ts          | weather_conditions 
---------------------+--------------------
 2017-11-05 00:00:00 | Good
 2017-11-05 01:00:00 | Bad
 2017-11-05 02:00:00 | Good
 2017-11-05 03:00:00 | Good
 2017-11-05 04:00:00 | Bad
 2017-11-05 05:00:00 | Bad
 2017-11-05 06:00:00 | Good
 2017-11-05 07:00:00 | Good
 2017-11-05 08:00:00 | Good
 2017-11-05 09:00:00 | Good
 2017-11-05 10:00:00 | Good
 2017-11-05 11:00:00 | Good
 2017-11-05 12:00:00 | Good
 2017-11-05 13:00:00 | Good
 2017-11-05 14:00:00 | Bad
 2017-11-05 15:00:00 | Good
 2017-11-05 16:00:00 | Bad
 2017-11-05 17:00:00 | Good
 2017-11-05 18:00:00 | Bad
 2017-11-05 19:00:00 | Bad
 2017-11-05 20:00:00 | Bad
 2017-11-05 21:00:00 | Good
 2017-11-05 22:00:00 | Good
 2017-11-05 23:00:00 | Good
(24 rows)

La solicitud que utilizaste para resolver la tarea.
chicago_taxi=# SELECT ts, CASE WHEN description ILIKE '%rain%' OR description ILIKE '%storm%' THEN 'Bad' ELSE 'Good' END AS weather_conditions FROM weather_records WHERE ts >= '2017-11-05 00:00:00' AND ts < '2017-11-06 00:00:00';
 
Ejercicio 4
La tabla con datos para un período específico.
                company_name                 | trips_amount 
----------------------------------------------+--------------
 Flash Cab                                    |        19558
 Taxi Affiliation Services                    |        11422
 Medallion Leasin                             |        10367
 Yellow Cab                                   |         9888
 Taxi Affiliation Service Yellow              |         9299
 Chicago Carriage Cab Corp                    |         9181
 City Service                                 |         8448

 Sun Taxi                                     |         7701
 Star North Management LLC                    |         7455
 Blue Ribbon Taxi Association Inc.            |         5953
 Choice Taxi Association                      |         5015
 Globe Taxi                                   |         4383
 Dispatch Taxi Affiliation                    |         3355
 Nova Taxi Affiliation Llc                    |         3175
 Patriot Taxi Dba Peace Taxi Associat         |         2235
 Checker Taxi Affiliation                     |         2216
 Blue Diamond                                 |         2070
 Chicago Medallion Management                 |         1955
 24 Seven Taxi                                |         1775
 Chicago Medallion Leasing INC                |         1607
 Checker Taxi                                 |         1486
 American United                              |         1404
 Chicago Independents                         |         1296
 KOAM Taxi Association                        |         1259
 Chicago Taxicab                              |         1014
 Top Cab Affiliation                          |          978
 Gold Coast Taxi                              |          428
 Service Taxi Association                     |          402
 5 Star Taxi                                  |          310
 303 Taxi                                     |          250
 Setare Inc                                   |          230
 American United Taxi Affiliation             |          210
 Leonard Cab Co                               |          147
 Metro Jet Taxi A                             |          146
 Norshore Cab                                 |          127
 6742 - 83735 Tasha ride inc                  |           39
 3591 - 63480 Chuks Cab                       |           37
 1469 - 64126 Omar Jada                       |           36
 6743 - 78771 Luhak Corp                      |           33
 0118 - 42111 Godfrey S.Awir                  |           33
 6574 - Babylon Express Inc.                  |           31
 Chicago Star Taxicab                         |           29
 1085 - 72312 N and W Cab Co                  |           29
 2809 - 95474 C & D Cab Co Inc.               |           29
 2092 - 61288 Sbeih company                   |           27
 3011 - 66308 JBL Cab Inc.                    |           25
 3620 - 52292 David K. Cab Corp.              |           21
 4615 - 83503 Tyrone Henderson                |           21
 3623 - 72222 Arrington Enterprises           |           20
 5074 - 54002 Ahzmi Inc                       |           16
 2823 - 73307 Lee Express Inc                 |           15
 4623 - 27290 Jay Kim                         |           15
 3721 - Santamaria Express, Alvaro Santamaria |           14
 5006 - 39261 Salifu Bawa                     |           14
 2192 - 73487 Zeymane Corp                    |           14
 6057 - 24657 Richard Addo                    |           13
 5997 - 65283 AW Services Inc.                |           12
 Metro Group                                  |           11
 5062 - 34841 Sam Mestas                      |            8
 4053 - 40193 Adwar H. Nikola                 |            7
 2733 - 74600 Benny Jona                      |            7
 5874 - 73628 Sergey Cab Corp.                |            5
 2241 - 44667 - Felman Corp, Manuel Alonso    |            3
 3556 - 36214 RC Andrews Cab                  |            2
(64 rows)

(END)



La solicitud que utilizaste para resolver la tarea.
chicago_taxi=# SELECT cabs.company_name, COUNT(trips.trip_id) AS trips_amount FROM trips JOIN cabs ON trips.cab_id = cabs.cab_id WHERE trips.start_ts >= '2017-11-15 00:00:00' AND trips.start_ts < '2017-11-17 00:00:00' GROUP BY cabs.company_name ORDER BY trips_amount DESC;
