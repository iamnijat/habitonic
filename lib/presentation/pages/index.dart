library pages;

import 'package:flutter/material.dart';
import 'package:habitonic/config/constants/palette.dart';
import 'package:habitonic/data/models/router_model/habit_details_page_arguments_view_model.dart';
import 'package:habitonic/presentation/bloc/today_habits_bloc/today_habits_bloc.dart';
import 'package:habitonic/presentation/cubit/splash_page_cubit/splash_page_cubit.dart';
import 'package:habitonic/presentation/widgets/index.dart';
import 'package:habitonic/l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../../config/constants/assets.dart';
import '../../config/constants/styles.dart';
import '../../injection_container.dart';
import '../cubit/habit_details_cubit/habit_details_cubit.dart';
import '../cubit/intro_page_cubit/intro_page_cubit.dart';

part 'intro_page.dart';
part 'home_page.dart';
part 'splash_page.dart';
part 'habit_details_page.dart';
part 'error_page.dart';
