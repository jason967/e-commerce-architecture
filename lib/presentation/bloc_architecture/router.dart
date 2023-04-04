import 'package:go_router/go_router.dart';
import 'package:sample_project/presentation/bloc_architecture/category/category.page.dart';
import 'package:sample_project/presentation/bloc_architecture/home/home.page.dart';
import 'package:sample_project/presentation/bloc_architecture/main.page.dart';
import 'package:sample_project/presentation/bloc_architecture/search/search.page.dart';

final GoRouter blocRouter = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      name: 'category',
      path: '/category',
      builder: (context, state) => const CategoryPage(),
    ),
    GoRoute(
      name: 'search',
      path: '/search',
      builder: (context, state) => const SearchPage(),
    ),
  ],
);
