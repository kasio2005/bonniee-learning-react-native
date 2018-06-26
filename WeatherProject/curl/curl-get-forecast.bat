REM e.g., on Su. 6/24/2018 @ 10:35 PM:
REM {"coord":{"lon":-83.93,"lat":10.04},"weather":[{"id":211,"main":"Thunderstorm",
REM description":"thunderstorm","icon":"11n"}],"base":"stations","main":{"temp":71.
REM ,"pressure":1016,"humidity":88,"temp_min":71.6,"temp_max":71.6},"visibility":10
REM 00,"wind":{"speed":2.24},"clouds":{"all":40},"dt":1529892000,"sys":{"type":1,"i
REM ":4220,"message":0.0034,"country":"CR","sunrise":1529925427,"sunset":1529971184
REM ,"id":3623977,"name":"Cartago","cod":200}
curl "http://api.openweathermap.org/data/2.5/weather?q=11105&units=imperial&APPID=bbeb34ebf60ad50f7893e7440a1e2b0b"
