import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitonic/config/constants/durations.dart';
import 'package:habitonic/data/models/view_model/recent_emojis/recent_emojis_view_model.dart';
import 'package:habitonic/domain/use_cases/emojis_use_cases/get_all_emojis.dart';
import 'package:habitonic/domain/use_cases/emojis_use_cases/is_emoji_duplicated.dart';
import 'package:rxdart/rxdart.dart';
import '../../../core/services/router_service/index.dart';
import '../../../domain/use_cases/emojis_use_cases/store_recent_emoji_with_compaction.dart';
import '../../../injection_container.dart';

enum EmojisModalSheetState { loading, error, done }

class EmojisModalSheetCubit extends Cubit<EmojisModalSheetState> {
  EmojisModalSheetCubit(
      {required this.isEmojiDuplicated,
      required this.storeRecentEmojiWithCompaction,
      required this.getAllEmojis})
      : super(EmojisModalSheetState.loading);

  final IsEmojiDuplicated isEmojiDuplicated;
  final StoreRecentEmojiWithCompaction storeRecentEmojiWithCompaction;
  final GetAllEmojis getAllEmojis;

  /// Initializations of Services
  RouterService get _navigation => getIt<RouterService>();

  /// Initializations of Variables
  List<String> emojis = <String>[];

  /// RxDart Stream Controllers
  final _emojisSelectionController = BehaviorSubject<String>();

  Future<void> fetchEmojis(BuildContext _context) async {
    _emittingState(EmojisModalSheetState.loading);

    _getAllEmojis(_context);

    await _addDelay(DurationsUtil.twoHundredFiftyMillisecondsDuration);
    _emittingState(EmojisModalSheetState.done);
    Fimber.d('Emojis has been fetched successfully');
  }

  void selectEmoji(String _emoji, BuildContext _context) async {
    _emojisSelectionController.add(_emoji);
    _checkAddingRecentEmojis(_emoji);

    await _addDelay(DurationsUtil.oneHundredMillisecondsDuration);
    _back(_context, _emoji);
  }

  void _getAllEmojis(BuildContext _context) async {
    final result = await getAllEmojis(_context);

    result.when(
      error: (_) {
        emit(EmojisModalSheetState.error);
        return;
      },
      success: (allEmojis) {
        emojis = allEmojis;
      },
    );
  }

  void _checkAddingRecentEmojis(String _emoji) {
    final result = isEmojiDuplicated(_emoji);

    result.when(
      error: (_) {
        emit(EmojisModalSheetState.error);
        return;
      },
      success: (isDuplicated) {
        if (isDuplicated != true) {
          _storeEmoji(_emoji);
        }
      },
    );
  }

  void _storeEmoji(String _emoji) {
    final _model = _createEmojiModel(_emoji);
    final result = storeRecentEmojiWithCompaction(_model);

    if (result.isSuccess()) {
      Fimber.d('Recent emoji has been added');
    } else if (result.isError()) {
      emit(EmojisModalSheetState.error);
      return;
    }
  }

  RecentEmojisViewModel _createEmojiModel(String _emoji) =>
      RecentEmojisViewModel(emoji: _emoji);

  void _back(BuildContext _context, String _emojiItem) =>
      _navigation.back(_context, result: _emojiItem);

  _addDelay(Duration _delay) async => await Future.delayed(_delay);

  void _emittingState(EmojisModalSheetState _state) => emit(_state);

  @override
  Future<void> close() {
    _emojisSelectionController.close();
    return super.close();
  }
}

extension EmojisModalSheetCubitEmojiSelectionControllerRxExtension
    on EmojisModalSheetCubit {
  Stream<String> get emojisSelectionStream => _emojisSelectionController.stream;
}
