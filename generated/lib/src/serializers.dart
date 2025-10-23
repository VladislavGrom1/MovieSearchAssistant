//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:generated/src/date_serializer.dart';
import 'package:generated/src/model/date.dart';

import 'package:generated/src/model/api_error.dart';
import 'package:generated/src/model/api_key_response.dart';
import 'package:generated/src/model/api_key_response_daily_quota.dart';
import 'package:generated/src/model/api_key_response_total_quota.dart';
import 'package:generated/src/model/award.dart';
import 'package:generated/src/model/award_person.dart';
import 'package:generated/src/model/award_response.dart';
import 'package:generated/src/model/box_office.dart';
import 'package:generated/src/model/box_office_response.dart';
import 'package:generated/src/model/company.dart';
import 'package:generated/src/model/country.dart';
import 'package:generated/src/model/digital_release_item.dart';
import 'package:generated/src/model/digital_release_response.dart';
import 'package:generated/src/model/distribution.dart';
import 'package:generated/src/model/distribution_country.dart';
import 'package:generated/src/model/distribution_response.dart';
import 'package:generated/src/model/episode.dart';
import 'package:generated/src/model/external_source_response.dart';
import 'package:generated/src/model/external_source_response_items.dart';
import 'package:generated/src/model/fact.dart';
import 'package:generated/src/model/fact_response.dart';
import 'package:generated/src/model/film.dart';
import 'package:generated/src/model/film_collection_response.dart';
import 'package:generated/src/model/film_collection_response_items.dart';
import 'package:generated/src/model/film_search_by_filters_response.dart';
import 'package:generated/src/model/film_search_by_filters_response_items.dart';
import 'package:generated/src/model/film_search_response.dart';
import 'package:generated/src/model/film_search_response_films.dart';
import 'package:generated/src/model/film_sequels_and_prequels_response.dart';
import 'package:generated/src/model/filters_response.dart';
import 'package:generated/src/model/filters_response_countries.dart';
import 'package:generated/src/model/filters_response_genres.dart';
import 'package:generated/src/model/genre.dart';
import 'package:generated/src/model/image_response.dart';
import 'package:generated/src/model/image_response_items.dart';
import 'package:generated/src/model/kinopoisk_user_vote_response.dart';
import 'package:generated/src/model/kinopoisk_user_vote_response_items.dart';
import 'package:generated/src/model/media_posts_response.dart';
import 'package:generated/src/model/media_posts_response_items.dart';
import 'package:generated/src/model/person_by_name_response.dart';
import 'package:generated/src/model/person_by_name_response_items.dart';
import 'package:generated/src/model/person_response.dart';
import 'package:generated/src/model/person_response_films.dart';
import 'package:generated/src/model/person_response_spouses.dart';
import 'package:generated/src/model/premiere_response.dart';
import 'package:generated/src/model/premiere_response_item.dart';
import 'package:generated/src/model/related_film_response.dart';
import 'package:generated/src/model/related_film_response_items.dart';
import 'package:generated/src/model/review_response.dart';
import 'package:generated/src/model/review_response_items.dart';
import 'package:generated/src/model/season.dart';
import 'package:generated/src/model/season_response.dart';
import 'package:generated/src/model/staff_response.dart';
import 'package:generated/src/model/video_response.dart';
import 'package:generated/src/model/video_response_items.dart';

part 'serializers.g.dart';

@SerializersFor([
  ApiError,
  ApiKeyResponse,
  ApiKeyResponseDailyQuota,
  ApiKeyResponseTotalQuota,
  Award,
  AwardPerson,
  AwardResponse,
  BoxOffice,
  BoxOfficeResponse,
  Company,
  Country,
  $Country,
  DigitalReleaseItem,
  DigitalReleaseResponse,
  Distribution,
  DistributionCountry,
  DistributionResponse,
  Episode,
  ExternalSourceResponse,
  ExternalSourceResponseItems,
  Fact,
  FactResponse,
  Film,
  FilmCollectionResponse,
  FilmCollectionResponseItems,
  FilmSearchByFiltersResponse,
  FilmSearchByFiltersResponseItems,
  FilmSearchResponse,
  FilmSearchResponseFilms,
  FilmSequelsAndPrequelsResponse,
  FiltersResponse,
  FiltersResponseCountries,
  FiltersResponseGenres,
  Genre,
  ImageResponse,
  ImageResponseItems,
  KinopoiskUserVoteResponse,
  KinopoiskUserVoteResponseItems,
  MediaPostsResponse,
  MediaPostsResponseItems,
  PersonByNameResponse,
  PersonByNameResponseItems,
  PersonResponse,
  PersonResponseFilms,
  PersonResponseSpouses,
  PremiereResponse,
  PremiereResponseItem,
  RelatedFilmResponse,
  RelatedFilmResponseItems,
  ReviewResponse,
  ReviewResponseItems,
  Season,
  SeasonResponse,
  StaffResponse,
  VideoResponse,
  VideoResponseItems,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(int)]),
        () => ListBuilder<int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(FilmSequelsAndPrequelsResponse)]),
        () => ListBuilder<FilmSequelsAndPrequelsResponse>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(StaffResponse)]),
        () => ListBuilder<StaffResponse>(),
      )
      ..add(Country.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
