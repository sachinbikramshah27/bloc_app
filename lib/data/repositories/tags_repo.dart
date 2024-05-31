import 'dart:convert';

import 'package:bloc_app/presentation/screens/home_screen/tags_screen/tags_model.dart';
import 'package:flutter/material.dart';

import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoint_urls.dart';

class TagsRepo extends ApiClient {
  TagsRepo();

  Future<TagsModel> getAllTags() async {
    try {
      var response = await getRequest(path: ApiEndPointUrls.tags);
      if (response.statusCode == 200) {
        final responseData = tagsModelFromJson(jsonEncode(response.data));
        return responseData;
        // debugPrint(responseData.toString());
      } else {
        TagsModel();
      }

      // return response;
    } on Exception catch (e) {
      debugPrint(e.toString());
      TagsModel();
    }
    return TagsModel();
  }
}
