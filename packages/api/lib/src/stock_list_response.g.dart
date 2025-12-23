// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockListResponse _$StockListResponseFromJson(Map<String, dynamic> json) =>
    _StockListResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Stock.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StockListResponseToJson(_StockListResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

_Stock _$StockFromJson(Map<String, dynamic> json) => _Stock(
  id: (json['id'] as num).toInt(),
  companyName: json['companyName'] as String,
  tradingSymbol: json['tradingSymbol'] as String,
  logo: json['logo'] as String?,
  currency: json['currency'] as String,
  shariahCheck: json['shariahCheck'] as bool,
  analysisDate: DateTime.parse(json['analysisDate'] as String),
  isCompliant: json['isCompliant'] as bool,
  price: Price.fromJson(json['price'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StockToJson(_Stock instance) => <String, dynamic>{
  'id': instance.id,
  'companyName': instance.companyName,
  'tradingSymbol': instance.tradingSymbol,
  if (instance.logo case final value?) 'logo': value,
  'currency': instance.currency,
  'shariahCheck': instance.shariahCheck,
  'analysisDate': instance.analysisDate.toIso8601String(),
  'isCompliant': instance.isCompliant,
  'price': instance.price.toJson(),
};

_Price _$PriceFromJson(Map<String, dynamic> json) => _Price(
  price: (json['price'] as num).toDouble(),
  changePercent: (json['changePercent'] as num).toDouble(),
);

Map<String, dynamic> _$PriceToJson(_Price instance) => <String, dynamic>{
  'price': instance.price,
  'changePercent': instance.changePercent,
};

_Meta _$MetaFromJson(Map<String, dynamic> json) =>
    _Meta(count: (json['count'] as num).toInt());

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'count': instance.count,
};
