part of 'products_cubit.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object?> get props => [];
}

class ProductsLoadingState extends ProductsState {
  const ProductsLoadingState();
}

class ProductsLoadedState extends ProductsState {
  const ProductsLoadedState(this.productList);

  final List<Product> productList;

  @override
  List<Object?> get props => [productList];
}

class ProductsErrorState extends ProductsState {
  const ProductsErrorState(this.error);

  final String? error;

  @override
  List<Object?> get props => [error];

}
