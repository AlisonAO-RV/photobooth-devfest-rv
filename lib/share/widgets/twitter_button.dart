import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_photobooth/l10n/l10n.dart';
import 'package:io_photobooth/share/share.dart';
import 'package:photobooth_ui/photobooth_ui.dart';

class TwitterButton extends StatelessWidget {
  const TwitterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ElevatedButton(
      onPressed: () {
        final state = context.read<ShareBloc>().state;
        if (state.uploadStatus.isSuccess) {
          Navigator.of(context).pop();
          openLink(state.twitterShareUrl);
          return;
        }

        context.read<ShareBloc>().add(const ShareOnTwitterTapped());

        Navigator.of(context).pop();
      },
      child: Text(l10n.shareDialogTwitterButtonText),
    );
  }
}
