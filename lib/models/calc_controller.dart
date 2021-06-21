import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'calc_state.dart';

final calcProvider = StateNotifierProvider((ref) => CalcController());

class CalcController extends StateNotifier<CalcState> {
  CalcController() : super(CalcState(
    text: "0",
  ));

  void input(String text){
    if (state.text == "0") {
      state = state.copyWith(text: text);
    } else {
      state = state.copyWith(text: state.text + text);
    }
  }
}
