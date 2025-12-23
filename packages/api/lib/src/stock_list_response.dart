import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_list_response.freezed.dart';
part 'stock_list_response.g.dart';

@freezed
abstract class StockListResponse with _$StockListResponse {
  const factory StockListResponse({
    required List<Stock> data,
    required Meta meta,
  }) = _StockListResponse;

  factory StockListResponse.fromJson(Map<String, dynamic> json) => _$StockListResponseFromJson(json);
}

@freezed
abstract class Stock with _$Stock {
  const factory Stock({
    required int id,
    required String companyName,
    required String tradingSymbol,
    required String? logo,
    required String currency,
    required bool shariahCheck,
    required DateTime analysisDate,
    required bool isCompliant,
    required Price price,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);
}

@freezed
abstract class Price with _$Price {
  const factory Price({
    required double price,
    required double changePercent,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    required int count,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
