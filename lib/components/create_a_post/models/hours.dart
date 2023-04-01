class Hours {
  String hours;
  String minutes;

  Hours({
    required this.hours,
    required this.minutes,
  });

  Map toJson() => {
        'hours': hours,
        'minutes': minutes,
      };

  Hours.fromJson(Map<String, dynamic> json)
      : hours = json['hours'],
        minutes = json['hours'];
}
