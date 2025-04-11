class Response<T> {
  final T data;
  final T headers;
  Response({required this.data, required this.headers});

  factory Response.noContent({required T headers}) =>
      Response(data: {'message': 'No Content'} as T, headers: headers);
}