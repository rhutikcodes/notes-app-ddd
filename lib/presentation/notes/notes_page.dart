import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/application/auth/auth_bloc.dart';
import 'package:notes/presentation/routes/router.gr.dart';

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) =>
                AutoRouter.of(context).replace(const SignInRoute()),
            orElse: () {},
          );
        },
        child: Scaffold(
          appBar: AppBar(
            actions: [],
          ),
          body: Column(
            children: [
              const Text("Hello"),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signedOut());
                },
                child: const Text("SignOUt"),
              )
            ],
          ),
        ));
  }
}
