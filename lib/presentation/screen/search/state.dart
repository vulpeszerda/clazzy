import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState());
}

class SearchState {
  SearchState({Key key});
}
