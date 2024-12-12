import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_background/app/app.dart';
import 'package:styled_background/styled_background/styled_background.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final model = StyledBackgroundModelBuilder().buildFromConfiguration(config);

    return AppScaffold(
      appBarTitle: 'Styled Background',
      page: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HeaderAd(),
          Expanded(
            child: BlocBuilder<AppCubit, AppState>(
              buildWhen: (previous, current) => previous.status != current.status,
              builder: (context, state) => state.status.when(
                initial: () => SizedBox.shrink(),
                error: () => SizedBox.shrink(),
                buildingBackground: () => SizedBox.shrink(),
                backgroundBuilded: () => StyledBackgroundWidget(
                  model: state.model!,
                  child: const AccountsPageBody(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
