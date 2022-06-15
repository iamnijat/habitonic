part of pages;

class SplashPage extends StatelessWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashPageCubit>(
      create: (_) => getIt<SplashPageCubit>()..checkRoute(context),
      child: const _SplashPageBody(),
    );
  }
}

class _SplashPageBody extends StatelessWidget {
  const _SplashPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SplashPageCubit, SplashPageState>(
          builder: (context, state) {
        if (state == SplashPageState.error) {
          return const ErrorPage();
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                height: 27.h,
                width: 27.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppImages.logo),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
