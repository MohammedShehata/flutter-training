import 'package:flutter_training/data/model/responses/base_response.dart';

Future<void> networkCall<T extends BaseResponse>(Future<T> futureCall,
    void Function(T t) onSuccess, void Function(T? t) onError) async {
  try {
    var response = await futureCall;

    if (response.isSuccessful()) {
      onSuccess(response);
    } else {
      onError(response);
    }
  } on Exception catch (_) {
    onError(null);
  }
}
