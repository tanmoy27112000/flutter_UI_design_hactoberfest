import 'dart:convert';

List<CoinModel> coinModelFromJson(String str) =>
    List<CoinModel>.from(json.decode(str).map((x) => CoinModel.fromJson(x)));

String coinModelToJson(List<CoinModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CoinModel {
  CoinModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    // required this.marketCap,
    required this.marketCapRank,
    // required this.fullyDilutedValuation,
    required this.totalVolume,
    required this.high24H,
    required this.low24H,
    required this.priceChange24H,
    // required this.priceChangePercentage24H,
    // required this.marketCapChange24H,
    required this.marketCapChangePercentage24H,
    // required this.circulatingSupply,
    // required this.totalSupply,
    // required this.maxSupply,
    // required this.ath,
    // required this.athChangePercentage,
    // required this.athDate,
    // required this.atl,
    // required this.atlChangePercentage,
    // required this.atlDate,
    // this.roi,
    // required this.lastUpdated,
    required this.sparklineIn7D,
  });

  String id;
  String symbol;
  String name;
  String image;
  double currentPrice;
  // int marketCap;
  int marketCapRank;
  // int fullyDilutedValuation;
  double totalVolume;
  double high24H;
  double low24H;
  double priceChange24H;
  // double priceChangePercentage24H;
  // int marketCapChange24H;
  double marketCapChangePercentage24H;
  // int circulatingSupply;
  // int totalSupply;
  // int maxSupply;
  // int ath;
  // double athChangePercentage;
  // DateTime athDate;
  // double atl;
  // double atlChangePercentage;
  // DateTime atlDate;
  // dynamic roi;
  // DateTime lastUpdated;
  SparklineIn7D sparklineIn7D;

  factory CoinModel.fromJson(Map<String, dynamic> json) => CoinModel(
        id: json["id"],
        symbol: json["symbol"],
        name: json["name"],
        image: json["image"],
        currentPrice: json["current_price"].toDouble(),
        // marketCap: json["market_cap"],
        marketCapRank: json["market_cap_rank"],
        // fullyDilutedValuation: json["fully_diluted_valuation"],
        totalVolume: json["total_volume"].toDouble(),
        high24H: json["high_24h"].toDouble(),
        low24H: json["low_24h"].toDouble(),
        priceChange24H: json["price_change_24h"]?.toDouble(),
        // priceChangePercentage24H: json["price_change_percentage_24h"]?.toDouble(),
        // marketCapChange24H: json["market_cap_change_24h"],
        marketCapChangePercentage24H:
            json["market_cap_change_percentage_24h"]?.toDouble(),
        // circulatingSupply: json["circulating_supply"],
        // totalSupply: json["total_supply"],
        // maxSupply: json["max_supply"],
        // ath: json["ath"],
        // athChangePercentage: json["ath_change_percentage"]?.toDouble(),
        // athDate: DateTime.parse(json["ath_date"]),
        // atl: json["atl"]?.toDouble(),
        // atlChangePercentage: json["atl_change_percentage"]?.toDouble(),
        // atlDate: DateTime.parse(json["atl_date"]),
        // roi: json["roi"],
        // lastUpdated: DateTime.parse(json["last_updated"]),
        sparklineIn7D: SparklineIn7D.fromJson(json["sparkline_in_7d"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "image": image,
        "current_price": currentPrice,
        // "market_cap": marketCap,
        "market_cap_rank": marketCapRank,
        // "fully_diluted_valuation": fullyDilutedValuation,
        "total_volume": totalVolume,
        "high_24h": high24H,
        "low_24h": low24H,
        "price_change_24h": priceChange24H,
        // "price_change_percentage_24h": priceChangePercentage24H,
        // "market_cap_change_24h": marketCapChange24H,
        "market_cap_change_percentage_24h": marketCapChangePercentage24H,
        // "circulating_supply": circulatingSupply,
        // "total_supply": totalSupply,
        // "max_supply": maxSupply,
        // "ath": ath,
        // "ath_change_percentage": athChangePercentage,
        // "ath_date": athDate.toIso8601String(),
        // "atl": atl,
        // "atl_change_percentage": atlChangePercentage,
        // "atl_date": atlDate.toIso8601String(),
        // "roi": roi,
        // "last_updated": lastUpdated.toIso8601String(),
        "sparkline_in_7d": sparklineIn7D.toJson(),
      };
}

class SparklineIn7D {
  SparklineIn7D({
    required this.price,
  });

  List<double> price;

  factory SparklineIn7D.fromJson(Map<String, dynamic> json) => SparklineIn7D(
        price: List<double>.from(json["price"].map((x) => x?.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "price": List<dynamic>.from(price.map((x) => x)),
      };
}
