import 'package:lib_dependencies/lib_dependencies.dart';

class PaginatedResponse<T> extends Equatable {
  final List<T> data;
  final int total;

  const PaginatedResponse({required this.data, required this.total});

  @override
  List<Object> get props => [data, total];
}
