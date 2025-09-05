class HttpBinGetResponse {
  final Map<String, dynamic> args;
  final Map<String, String> headers;
  final String origin;
  final String url;

  HttpBinGetResponse({
    required this.args,
    required this.headers,
    required this.origin,
    required this.url,
  });

  factory HttpBinGetResponse.fromJson(Map<String, dynamic> json) {
    return HttpBinGetResponse(
      args: json['args'] as Map<String, dynamic> ?? {}, 
      headers: Map<String, String>.from(json['headers'] as Map<String, dynamic>), 
      origin: json['origin'] as String, 
      url: json['url'] as String,
    );
  }
}