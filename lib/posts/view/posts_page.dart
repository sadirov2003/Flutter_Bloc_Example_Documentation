import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example_documentation/posts/bloc/post_event.dart';
import 'package:flutter_bloc_example_documentation/posts/view/post_list.dart';
import 'package:http/http.dart' as http;
import '../bloc/post_bloc.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (_) => PostBloc(
          httpClient: http.Client()),
          child: const PostsList(),
      ),
    );
  }
}
