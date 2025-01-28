import 'package:assignmenttwo/feature/post/data/model/post_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class PostController extends GetxController {
  var isLoading = true.obs;
  var postList = <Post>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body) as List;
        postList.value = jsonData.map((item) => Post.fromJson(item)).toList();
      } else {
        Get.snackbar('Error', 'Failed to load posts');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
