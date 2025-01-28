import 'package:assignmentthree/feature/hive/data/model/home_screen_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hive/hive.dart';


class HomeScreenController extends GetxController {
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

      // First, try to fetch data from the API
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body) as List;
        postList.value = jsonData.map((item) => Post.fromJson(item)).toList();

        // Save the fetched data to Hive
        var box = await Hive.openBox('postsBox');
        box.put('posts', postList);
      } else {
        // If API call fails, check if there's cached data in Hive
        loadCachedPosts();
      }
    } catch (e) {
      // If there's an error, load cached data
      loadCachedPosts();
    } finally {
      isLoading(false);
    }
  }

  void loadCachedPosts() async {
    var box = await Hive.openBox('postsBox');
    if (box.containsKey('posts')) {
      var cachedPosts = box.get('posts') as List;
      postList.value = cachedPosts.map((item) => Post.fromJson(item)).toList();
    }
  }
}
