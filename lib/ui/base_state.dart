import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {
  Status status = Status.initial;

  String? message;
  String? statusCode;

  @override
  List<Object?> get props => [];
}

enum Status { initial, loading, success, failure }
