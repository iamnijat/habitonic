part of pages;

class IntroPage extends StatelessWidget {
  const IntroPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IntroPageCubit>(
      create: (_) => getIt<IntroPageCubit>(),
      child: const _IntroPageBody(),
    );
  }
}

class _IntroPageBody extends StatelessWidget {
  const _IntroPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _localization = AppLocalizations.of(context)!;
    return BlocBuilder<IntroPageCubit, IntroPageState>(
        builder: (context, state) {
      final _cubit = context.read<IntroPageCubit>();
      final _checkingState = state == IntroPageState.checking;
      if (state == IntroPageState.error) {
        return const ErrorPage();
      }
      return Scaffold(
        backgroundColor: AppPalette.whiteColor,
        body: Column(children: <Widget>[
          const VerticalSpacer(2),
          const IntroThumbnail(),
          IntroOverview(_localization),
          const Spacer(),
          IntroButton(_cubit, _checkingState, _localization),
        ]),
      );
    });
  }
}
