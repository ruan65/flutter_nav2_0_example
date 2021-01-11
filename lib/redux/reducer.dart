import 'package:nav20/redux/actions.dart';
import 'package:nav20/redux/state.dart';

AppState appReducer(AppState prevState, dynamic action) {
  if (action is BookSelectedAction) {
    return prevState.copyWith(selectedBook: action.book);
  }
}
