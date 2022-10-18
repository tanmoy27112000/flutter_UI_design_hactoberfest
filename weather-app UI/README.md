

# Weather App with Flutter
With this app its so easy to receive the weather 
conditions in your current location.
this app provides detailed local forecast
 & weather forecast world wide,
  the app provides the current temperature in Celsius,
   sunrise and sunset time according to city time zone.


[![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs)

[![flutter](https://badgen.net//badge/flutter/2.8/blue?icon=github)](https://github.com/flutter/flutter)

[![DartSDK](https://badgen.net//badge/DartSDK/1.24.3/blue)](https://github.com/flutter/flutter)

## Developer

- [@mashood100](https://github.com/mashood100)



## Flutter Packages

| Packages             | versions                                                                |
| ----------------- | ------------------------------------------------------------------ |
| Getx | [ get: 4.3.8](https://pub.dev/packages/get) 
| https | [ http 0.13.4](https://pub.dev/packages/http) 
| flutter_spinkit | [ flutter_spinkit: 5.1.0](https://pub.dev/packages/flutter_spinkit) 

## App Demo
<p align="center">
  <img src="https://github.com/mashood100/weather-app-with-flutter/blob/master/images/ss1.jpg" width="240" title="hover text"> 
   <img src="https://github.com/mashood100/weather-app-with-flutter/blob/master/images/ss2.jpg" width="240" title="hover text"> </p>
 
 <p align="center"> 
 <img src="https://github.com/mashood100/weather-app-with-flutter/blob/master/images/ss3.jpg" width="240" title="hover text">
   <img src="https://github.com/mashood100/weather-app-with-flutter/blob/master/images/ss4.jpg"  width="240" title="hover text">
 </p>
 <p align="center">
   <img src="https://github.com/mashood100/weather-app-with-flutter/blob/master/images/ss5.jpg" width="240" title="hover text">
 <img src="https://github.com/mashood100/weather-app-with-flutter/blob/master/images/ss6.jpg" width="240" title="hover text">
  
 
</p>

## API Reference

#### Get Your main API from

```http
api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your custom API key |
| `city name` | `string` | **Required**. Your city name |

#### Note: 
You can find your api key after making your account on open weather
#### Get & 7day forcast APi

```http
https://api.openweathermap.org/data/2.5/onecall?lat={lat}&lon={lon}&exclude={part}&appid={API key}
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your custom API key |
| `lat` | `string` | **Required**. Your city name |
| `lon` | `string` | **Required**. Your city name |
