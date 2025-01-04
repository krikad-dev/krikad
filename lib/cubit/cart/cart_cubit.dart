// class CartState {
//   final List<CartItem> items;
//   final bool isLoading;
//   final String? error;

//   CartState({
//     this.items = const [],
//     this.isLoading = false,
//     this.error,
//   });

//   double get total => items.fold(
//         0,
//         (sum, item) => sum + (item.price * item.quantity),
//       );

//   CartState copyWith({
//     List<CartItem>? items,
//     bool? isLoading,
//     String? error,
//   }) {
//     return CartState(
//       items: items ?? this.items,
//       isLoading: isLoading ?? this.isLoading,
//       error: error ?? this.error,
//     );
//   }
// }

// class CartCubit extends Cubit<CartState> {
//   CartCubit() : super(CartState());

//   void addToCart(Product product) {
//     final currentItems = List<CartItem>.from(state.items);
//     final existingIndex = currentItems.indexWhere((item) => item.id == product.id);

//     if (existingIndex >= 0) {
//       currentItems[existingIndex] = currentItems[existingIndex].copyWith(
//         quantity: currentItems[existingIndex].quantity + 1,
//       );
//     } else {
//       currentItems.add(
//         CartItem(
//           id: product.id,
//           name: product.name,
//           price: product.price,
//           image: product.image,
//           quantity: 1,
//         ),
//       );
//     }

//     emit(state.copyWith(items: currentItems));
//   }

//   void removeFromCart(String productId) {
//     final currentItems = List<CartItem>.from(state.items);
//     final existingIndex = currentItems.indexWhere((item) => item.id == productId);

//     if (existingIndex >= 0) {
//       if (currentItems[existingIndex].quantity > 1) {
//         currentItems[existingIndex] = currentItems[existingIndex].copyWith(
//           quantity: currentItems[existingIndex].quantity - 1,
//         );
//       } else {
//         currentItems.removeAt(existingIndex);
//       }
//     }

//     emit(state.copyWith(items: currentItems));
//   }

//   void clearCart() {
//     emit(state.copyWith(items: []));
//   }
// }