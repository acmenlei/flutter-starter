class BaseResponseRecords<T> {
  List<T>? records; // 使用 ? 表示可选属性
  int? total; // 使用 ? 表示可选属性
  int? current; // 使用 ? 表示可选属性
  int? pageSize; // 使用 ? 表示可选属性
}

/// 数组类型
class BaseResponseList<T> {
  final int? code; // 使用 ? 表示可选属性
  final BaseResponseRecords<T>? data; // 使用 ? 表示可选属性
  final String? message; // 使用 ? 表示可选属性

  BaseResponseList(
      {required this.code, required this.message, required this.data});

  factory BaseResponseList.fromJson(
      Map<String, dynamic>? json, T Function(dynamic json) fromJsonData) {
    var data;
    if (json != null) {
      if (json['data'] == null) {
        data = null; // Handle null data
      } else if (json['data'] is String) {
        if (T == String) {
          data = json['data'] as T;
        } else {
          data = fromJsonData(json['data']);
        }
      } else {
        data = fromJsonData(json['data']);
      }
    }
    return BaseResponseList(
      code: json?['code'] as int?,
      message: json?['message'] as String?,
      data: data,
    );
  }

  bool isOk() {
    return code == 0;
  }
}

/// 单条数据类型
class BaseResponse<T> {
  final int? code; // 使用 ? 表示可选属性
  final T? data; // 使用 ? 表示可选属性
  final String? message; // 使用 ? 表示可选属性

  BaseResponse({required this.code, required this.message, required this.data});

  factory BaseResponse.fromJson(
      Map<String, dynamic>? json, T Function(dynamic json) fromJsonData) {
    var data;
    if (json != null) {
      if (json['data'] == null) {
        data = null; // Handle null data
      } else if (json['data'] is String) {
        if (T == String) {
          data = json['data'] as T;
        } else {
          data = fromJsonData(json['data']);
        }
      } else {
        data = fromJsonData(json['data']);
      }
    }
    return BaseResponse(
      code: json?['code'] as int?,
      message: json?['message'] as String?,
      data: data,
    );
  }

  bool isOk() {
    return code == 0;
  }
}
