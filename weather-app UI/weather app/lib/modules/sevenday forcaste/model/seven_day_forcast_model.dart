import 'dart:convert';

SevenDayForcastModel sevenDayForcastModelFromJson(String str) =>
    SevenDayForcastModel.fromJson(json.decode(str));
String sevenDayForcastModelToJson(SevenDayForcastModel data) =>
    json.encode(data.toJson());

class SevenDayForcastModel {
  SevenDayForcastModel({
    num? lat,
    num? lon,
    String? timezone,
    num? timezoneOffset,
    List<Daily>? daily,
  }) {
    _lat = lat;
    _lon = lon;
    _timezone = timezone;
    _timezoneOffset = timezoneOffset;
    _daily = daily;
  }

  SevenDayForcastModel.fromJson(dynamic json) {
    _lat = json['lat'];
    _lon = json['lon'];
    _timezone = json['timezone'];
    _timezoneOffset = json['timezone_offset'];
    if (json['daily'] != null) {
      _daily = [];
      json['daily'].forEach((v) {
        _daily?.add(Daily.fromJson(v));
      });
    }
  }
  num? _lat;
  num? _lon;
  String? _timezone;
  num? _timezoneOffset;
  List<Daily>? _daily;

  num? get lat => _lat;
  num? get lon => _lon;
  String? get timezone => _timezone;
  num? get timezoneOffset => _timezoneOffset;
  List<Daily>? get daily => _daily;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['timezone'] = _timezone;
    map['timezone_offset'] = _timezoneOffset;
    if (_daily != null) {
      map['daily'] = _daily?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Daily dailyFromJson(String str) => Daily.fromJson(json.decode(str));
String dailyToJson(Daily data) => json.encode(data.toJson());

class Daily {
  Daily({
    num? dt,
    num? sunrise,
    num? sunset,
    num? moonrise,
    num? moonset,
    num? moonPhase,
    Temp? temp,
    FeelsLike? feelsLike,
    num? pressure,
    num? humidity,
    num? dewPonum,
    num? windSpeed,
    num? windDeg,
    num? windGust,
    List<Weather>? weather,
    num? clouds,
    num? pop,
    num? uvi,
  }) {
    _dt = dt;
    _sunrise = sunrise;
    _sunset = sunset;
    _moonrise = moonrise;
    _moonset = moonset;
    _moonPhase = moonPhase;
    _temp = temp;
    _feelsLike = feelsLike;
    _pressure = pressure;
    _humidity = humidity;
    _dewPonum = dewPonum;
    _windSpeed = windSpeed;
    _windDeg = windDeg;
    _windGust = windGust;
    _weather = weather;
    _clouds = clouds;
    _pop = pop;
    _uvi = uvi;
  }

  Daily.fromJson(dynamic json) {
    _dt = json['dt'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _moonrise = json['moonrise'];
    _moonset = json['moonset'];
    _moonPhase = json['moon_phase'];
    _temp = json['temp'] != null ? Temp.fromJson(json['temp']) : null;
    _feelsLike = json['feels_like'] != null
        ? FeelsLike.fromJson(json['feelsLike'])
        : null;
    _pressure = json['pressure'];
    _humidity = json['humidity'];
    _dewPonum = json['dew_ponum'];
    _windSpeed = json['wind_speed'];
    _windDeg = json['wind_deg'];
    _windGust = json['wind_gust'];
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _clouds = json['clouds'];
    _pop = json['pop'];
    _uvi = json['uvi'];
  }
  num? _dt;
  num? _sunrise;
  num? _sunset;
  num? _moonrise;
  num? _moonset;
  num? _moonPhase;
  Temp? _temp;
  FeelsLike? _feelsLike;
  num? _pressure;
  num? _humidity;
  num? _dewPonum;
  num? _windSpeed;
  num? _windDeg;
  num? _windGust;
  List<Weather>? _weather;
  num? _clouds;
  num? _pop;
  num? _uvi;

  num? get dt => _dt;
  num? get sunrise => _sunrise;
  num? get sunset => _sunset;
  num? get moonrise => _moonrise;
  num? get moonset => _moonset;
  num? get moonPhase => _moonPhase;
  Temp? get temp => _temp;
  FeelsLike? get feelsLike => _feelsLike;
  num? get pressure => _pressure;
  num? get humidity => _humidity;
  num? get dewPonum => _dewPonum;
  num? get windSpeed => _windSpeed;
  num? get windDeg => _windDeg;
  num? get windGust => _windGust;
  List<Weather>? get weather => _weather;
  num? get clouds => _clouds;
  dynamic get pop => _pop;
  num? get uvi => _uvi;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    map['moonrise'] = _moonrise;
    map['moonset'] = _moonset;
    map['moon_phase'] = _moonPhase;
    if (_temp != null) {
      map['temp'] = _temp?.toJson();
    }
    if (_feelsLike != null) {
      map['feels_like'] = _feelsLike?.toJson();
    }
    map['pressure'] = _pressure;
    map['humidity'] = _humidity;
    map['dew_ponum'] = _dewPonum;
    map['wind_speed'] = _windSpeed;
    map['wind_deg'] = _windDeg;
    map['wind_gust'] = _windGust;
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    map['clouds'] = _clouds;
    map['pop'] = _pop;
    map['uvi'] = _uvi;
    return map;
  }
}

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));
String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
  Weather({
    num? id,
    String? main,
    String? description,
    String? icon,
  }) {
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
  }

  Weather.fromJson(dynamic json) {
    _id = json['id'];
    _main = json['main'];
    _description = json['description'];
    _icon = json['icon'];
  }
  num? _id;
  String? _main;
  String? _description;
  String? _icon;

  num? get id => _id;
  String? get main => _main;
  String? get description => _description;
  String? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['main'] = _main;
    map['description'] = _description;
    map['icon'] = _icon;
    return map;
  }
}

FeelsLike feelsLikeFromJson(String str) => FeelsLike.fromJson(json.decode(str));
String feelsLikeToJson(FeelsLike data) => json.encode(data.toJson());

class FeelsLike {
  FeelsLike({
    num? day,
    num? night,
    num? eve,
    num? morn,
  }) {
    _day = day;
    _night = night;
    _eve = eve;
    _morn = morn;
  }

  FeelsLike.fromJson(dynamic json) {
    _day = json?['day'];
    _night = json?['night'];
    _eve = json?['eve'];
    _morn = json?['morn'];
  }
  num? _day;
  num? _night;
  num? _eve;
  num? _morn;

  num? get day => _day;
  num? get night => _night;
  num? get eve => _eve;
  num? get morn => _morn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['night'] = _night;
    map['eve'] = _eve;
    map['morn'] = _morn;
    return map;
  }
}

Temp tempFromJson(String str) => Temp.fromJson(json.decode(str));
String tempToJson(Temp data) => json.encode(data.toJson());

class Temp {
  Temp({
    num? day,
    num? min,
    num? max,
    num? night,
    num? eve,
    num? morn,
  }) {
    _day = day;
    _min = min;
    _max = max;
    _night = night;
    _eve = eve;
    _morn = morn;
  }

  Temp.fromJson(dynamic json) {
    _day = json['day'];
    _min = json['min'];
    _max = json['max'];
    _night = json['night'];
    _eve = json['eve'];
    _morn = json['morn'];
  }
  num? _day;
  num? _min;
  num? _max;
  num? _night;
  num? _eve;
  num? _morn;

  num? get day => _day;
  num? get min => _min;
  num? get max => _max;
  num? get night => _night;
  num? get eve => _eve;
  num? get morn => _morn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['min'] = _min;
    map['max'] = _max;
    map['night'] = _night;
    map['eve'] = _eve;
    map['morn'] = _morn;
    return map;
  }
}
