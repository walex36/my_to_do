import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:lib_dependencies/lib_dependencies.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitialState()) {
    on<SplashStartedEvent>(_onSplashStartedEvent);
  }

  Future<void> _onSplashStartedEvent(SplashStartedEvent event, Emitter<SplashState> emit) async {
    // Delayed for simulate initialization data
    await Future.delayed(const Duration(seconds: 2));
    emit(SplashFinishedState());
  }
}
