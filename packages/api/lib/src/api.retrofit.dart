import 'package:api/src/stock_list_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api.retrofit.g.dart';

/// use regex: >[\s\n]*_

@RestApi()
abstract class Api {
  factory Api(Dio dio, {required String baseUrl}) = _Api;

  @GET('/ailat/api/stocks/list')
  Future<StockListResponse> getStocks(
    @Query('filters[compliance]') bool? compliance,
    @Query('filters[search]') String? search,
    @Query('filters[country]') String? country,
    @Query('pagination[page]') int? page,
    @Query('pagination[perPage]') int? perPage,
  );
}
