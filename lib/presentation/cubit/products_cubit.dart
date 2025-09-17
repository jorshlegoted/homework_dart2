import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/models/product.dart';
import 'package:flutter_application_1/domain/repositories/products_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.repository) : super(const ProductsLoadingState());

  final ProductsRepository repository;

  Future<void> getProducts() async {
    emit(ProductsLoadingState());
    final products = await repository.getProducts();
    
    emit(ProductsLoadedState(products));
    
  }
}
