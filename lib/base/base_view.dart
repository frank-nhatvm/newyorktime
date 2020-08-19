import 'package:flutter/material.dart';
import 'package:newyorktimes/base/base_model.dart';
import 'package:newyorktimes/base/locator.dart';
import 'package:provider/provider.dart';

class BaseView<T extends BaseModel> extends StatefulWidget {

  final Widget Function(BuildContext context,T value , Widget child) builder;

  final Function(T) onModelFetchData;

  const BaseView({Key key,@required this.builder, this.onModelFetchData}) : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseModel> extends State<BaseView<T>> {

  T model = getIt<T>();

  @override
  void initState() {
    if(widget.onModelFetchData != null){
      widget.onModelFetchData(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => model,
      child: Consumer<T>(builder: widget.builder),
    );
  }
}
