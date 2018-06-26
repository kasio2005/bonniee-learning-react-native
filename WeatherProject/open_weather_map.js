/* Simple library to access the Open Weather Map API */
const WEATHER_API_KEY = "bbeb34ebf60ad50f7893e7440a1e2b0b";
const API_STEM = "http://api.openweathermap.org/data/2.5/weather?";

function zipUrl(zip){
    return `${API_STEM}q=${zip}&units=imperial&APPID=${WEATHER_API_KEY}`;
}

function fetchForecast(zip){
    let sWho = "open_weather_map.js::fetchForecast";
    let sZipUrl = zipUrl(zip); 
    console.log(`${sWho}(): Fetching sZipUrl = ${sZipUrl}...`);
    return fetch(sZipUrl)
    .then(response => response.json())
    .then(responseJSON => {
        console.log(`${sWho}(): Got responseJSON = `, responseJSON );
        let returno = {
            main: responseJSON.weather[0].main,
            description: responseJSON.weather[0].description,
            temp: responseJSON.main.temp
        }
        console.log(`${sWho}(): Returning = `, returno);
        return returno;
     })
     .catch(error => {
        console.error(`${sWho}(): D'oh!  Got error: `, error );
     });
}

export default { fetchForecast: fetchForecast };
