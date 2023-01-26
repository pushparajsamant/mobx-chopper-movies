// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobXData on MobXDataBase, Store {
  late final _$apiDataItemAtom =
      Atom(name: 'MobXDataBase.apiDataItem', context: context);

  @override
  ApiDataSerializer get apiDataItem {
    _$apiDataItemAtom.reportRead();
    return super.apiDataItem;
  }

  @override
  set apiDataItem(ApiDataSerializer value) {
    _$apiDataItemAtom.reportWrite(value, super.apiDataItem, () {
      super.apiDataItem = value;
    });
  }

  late final _$onPressedAsyncAction =
      AsyncAction('MobXDataBase.onPressed', context: context);

  @override
  Future<dynamic> onPressed(String title, BuildContext context) {
    return _$onPressedAsyncAction.run(() => super.onPressed(title, context));
  }

  @override
  String toString() {
    return '''
apiDataItem: ${apiDataItem}
    ''';
  }
}
