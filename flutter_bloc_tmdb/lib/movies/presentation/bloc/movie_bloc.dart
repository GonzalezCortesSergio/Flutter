import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(MovieInitial()) {
    on<GetPopularMovies>((event, emit) {});

    on<GetTopRatedMovies>((event, emit) {});

    on<GetLastPublishedMovies>((event, emit) {});
  }
}
