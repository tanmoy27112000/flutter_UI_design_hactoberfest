class ChartModel {
  int time;
  double? open;
  double? high;
  double? low;
  double? close;

  ChartModel({
    required this.time,
    this.open,
    this.high,
    this.low,
    this.close,
  });

  factory ChartModel.fromJson(List list) => ChartModel(
        time: list[0] == null ? null : list[0]!,
        open: list[1] == null ? null : list[1]!,
        high: list[2] == null ? null : list[2]!,
        low: list[3] == null ? null : list[3]!,
        close: list[4] == null ? null : list[4]!,
      );
}
