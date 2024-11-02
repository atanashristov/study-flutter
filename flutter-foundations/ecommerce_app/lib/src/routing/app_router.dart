import 'package:ecommerce_app/src/features/products_list/products_list_screen.dart';
import 'package:ecommerce_app/src/features/shopping_cart/shopping_cart_screen.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ProductsListScreen(),
      routes: [
        // Child routes keep the back arrow in the navigation top bar.
        // We do not front apply forward slash as go_router will do it automatically for us.
        GoRoute(
          path: 'cart',
          builder: (context, state) => const ShoppingCartScreen(),
        ),
      ],
    ),
  ],
);
