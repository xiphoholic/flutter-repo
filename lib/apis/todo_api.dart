import "package:get/get.dart";

class TodoApi extends GetConnect {
  String url = "https://jsonplaceholder.typicode.com/todos";

  Future<Response> getTodo() async {
    return await get("$url", headers: {
      'Content-type':'application/json',
      'Accept':'application/json',
    });
  }
}
