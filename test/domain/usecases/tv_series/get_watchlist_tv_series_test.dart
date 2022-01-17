import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/usecases/tv_series/get_watchlist_tv_series.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late GetWatchlistTvSeries usecase;
  late MockTvSeriesRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockTvSeriesRepository();
    usecase = GetWatchlistTvSeries(mockMovieRepository);
  });

  test('should get list of tv from the repository', () async {
    // arrange
    when(mockMovieRepository.getWatchlistTvSeries())
        .thenAnswer((_) async => Right(tvSeriesList));
    // act
    final result = await usecase.execute();
    // assert
    expect(result, Right(tvSeriesList));
  });
}
