import 'package:nav20/redux/reducer.dart';
import 'package:nav20/redux/state.dart';
import 'package:redux/redux.dart';

Store<AppState> createStore() {}

class Redux {
  static Store<AppState> _store;

  static Store<AppState> get store {
    if (_store == null) {
      throw Exception("store is not initialized");
    } else {
      return _store;
    }
  }

  static Future<void> init() async {
    final initialAppState = AppState.initial();
    _store = Store<AppState>(
      appReducer,
      initialState: initialAppState,
    );
  }
}
