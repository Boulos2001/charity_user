import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseModel<T> with _$ResponseModel<T> {
  const factory ResponseModel({
    required T data,
    required String? message,
    required int? statusCode,
    required Pagination? pagination,
    required bool?success
  }) = _ResponseModel<T>;

  factory ResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponseModelFromJson(json, fromJsonT);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    required int current_page,
    required int last_page,
    required int total_row,
    required int per_page,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
