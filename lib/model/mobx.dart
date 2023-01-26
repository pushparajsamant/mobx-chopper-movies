import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../data/FetchApiData.dart';
import '../serializer/getApiData.dart';

part 'mobx.g.dart';

class MobXData = MobXDataBase with _$MobXData;

abstract class MobXDataBase with Store {
  @observable
  ApiDataSerializer apiDataItem = ApiDataSerializer();

  @action
  Future onPressed(String title, BuildContext context) async {
    print('in function');

    final response = await Provider.of<FetchApiData>(context, listen: false).fetchData(title);

    ApiDataSerializer apiDataSerializer =
        ApiDataSerializer.fromJson(response.body);
    apiDataItem = apiDataSerializer;
  }
}
