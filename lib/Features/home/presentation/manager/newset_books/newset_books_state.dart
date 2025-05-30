part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksLoading extends NewsetBooksState {}

class NewsetBooksFailure extends NewsetBooksState {
  final String errMessage;

  const NewsetBooksFailure(this.errMessage);
}

class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  const NewsetBooksSuccess(this.books);
}
