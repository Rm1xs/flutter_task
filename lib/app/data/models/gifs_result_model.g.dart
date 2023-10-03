// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifs_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gifs _$GifsFromJson(Map<String, dynamic> json) => Gifs(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GifsToJson(Gifs instance) => <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
      'meta': instance.meta,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      type: $enumDecodeNullable(_$TypeEnumMap, json['type']),
      id: json['id'] as String?,
      url: json['url'] as String?,
      slug: json['slug'] as String?,
      bitlyGifUrl: json['bitly_gif_url'] as String?,
      bitlyUrl: json['bitly_url'] as String?,
      embedUrl: json['embed_url'] as String?,
      username: json['username'] as String?,
      source: json['source'] as String?,
      title: json['title'] as String?,
      rating: $enumDecodeNullable(_$RatingEnumMap, json['rating']),
      contentUrl: json['content_url'] as String?,
      sourceTld: json['source_tld'] as String?,
      sourcePostUrl: json['source_post_url'] as String?,
      isSticker: json['is_sticker'] as int?,
      importDatetime: json['import_datetime'] == null
          ? null
          : DateTime.parse(json['import_datetime'] as String),
      trendingDatetime: json['trending_datetime'] as String?,
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      analyticsResponsePayload: json['analytics_response_payload'] as String?,
      analytics: json['analytics'] == null
          ? null
          : Analytics.fromJson(json['analytics'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'type': _$TypeEnumMap[instance.type],
      'id': instance.id,
      'url': instance.url,
      'slug': instance.slug,
      'bitly_gif_url': instance.bitlyGifUrl,
      'bitly_url': instance.bitlyUrl,
      'embed_url': instance.embedUrl,
      'username': instance.username,
      'source': instance.source,
      'title': instance.title,
      'rating': _$RatingEnumMap[instance.rating],
      'content_url': instance.contentUrl,
      'source_tld': instance.sourceTld,
      'source_post_url': instance.sourcePostUrl,
      'is_sticker': instance.isSticker,
      'import_datetime': instance.importDatetime?.toIso8601String(),
      'trending_datetime': instance.trendingDatetime,
      'images': instance.images,
      'analytics_response_payload': instance.analyticsResponsePayload,
      'analytics': instance.analytics,
      'user': instance.user,
    };

const _$TypeEnumMap = {
  Type.GIF: 'gif',
};

const _$RatingEnumMap = {
  Rating.G: 'g',
};

Analytics _$AnalyticsFromJson(Map<String, dynamic> json) => Analytics(
      onload: json['onload'] == null
          ? null
          : Onclick.fromJson(json['onload'] as Map<String, dynamic>),
      onclick: json['onclick'] == null
          ? null
          : Onclick.fromJson(json['onclick'] as Map<String, dynamic>),
      onsent: json['onsent'] == null
          ? null
          : Onclick.fromJson(json['onsent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnalyticsToJson(Analytics instance) => <String, dynamic>{
      'onload': instance.onload,
      'onclick': instance.onclick,
      'onsent': instance.onsent,
    };

Onclick _$OnclickFromJson(Map<String, dynamic> json) => Onclick(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$OnclickToJson(Onclick instance) => <String, dynamic>{
      'url': instance.url,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      original: json['original'] == null
          ? null
          : FixedHeight.fromJson(json['original'] as Map<String, dynamic>),
      fixedHeight: json['fixed_height'] == null
          ? null
          : FixedHeight.fromJson(json['fixed_height'] as Map<String, dynamic>),
      fixedHeightDownsampled: json['fixed_height_downsampled'] == null
          ? null
          : FixedHeight.fromJson(
              json['fixed_height_downsampled'] as Map<String, dynamic>),
      fixedHeightSmall: json['fixed_height_small'] == null
          ? null
          : FixedHeight.fromJson(
              json['fixed_height_small'] as Map<String, dynamic>),
      fixedWidth: json['fixed_width'] == null
          ? null
          : FixedHeight.fromJson(json['fixed_width'] as Map<String, dynamic>),
      fixedWidthDownsampled: json['fixed_width_downsampled'] == null
          ? null
          : FixedHeight.fromJson(
              json['fixed_width_downsampled'] as Map<String, dynamic>),
      fixedWidthSmall: json['fixed_width_small'] == null
          ? null
          : FixedHeight.fromJson(
              json['fixed_width_small'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'original': instance.original,
      'fixed_height': instance.fixedHeight,
      'fixed_height_downsampled': instance.fixedHeightDownsampled,
      'fixed_height_small': instance.fixedHeightSmall,
      'fixed_width': instance.fixedWidth,
      'fixed_width_downsampled': instance.fixedWidthDownsampled,
      'fixed_width_small': instance.fixedWidthSmall,
    };

FixedHeight _$FixedHeightFromJson(Map<String, dynamic> json) => FixedHeight(
      height: json['height'] as String?,
      width: json['width'] as String?,
      size: json['size'] as String?,
      url: json['url'] as String?,
      mp4Size: json['mp4_size'] as String?,
      mp4: json['mp4'] as String?,
      webpSize: json['webp_size'] as String?,
      webp: json['webp'] as String?,
      frames: json['frames'] as String?,
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$FixedHeightToJson(FixedHeight instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'size': instance.size,
      'url': instance.url,
      'mp4_size': instance.mp4Size,
      'mp4': instance.mp4,
      'webp_size': instance.webpSize,
      'webp': instance.webp,
      'frames': instance.frames,
      'hash': instance.hash,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      avatarUrl: json['avatar_url'] as String?,
      bannerImage: json['banner_image'] as String?,
      bannerUrl: json['banner_url'] as String?,
      profileUrl: json['profile_url'] as String?,
      username: json['username'] as String?,
      displayName: json['display_name'] as String?,
      description: json['description'] as String?,
      instagramUrl: json['instagram_url'] as String?,
      websiteUrl: json['website_url'] as String?,
      isVerified: json['is_verified'] as bool?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'banner_image': instance.bannerImage,
      'banner_url': instance.bannerUrl,
      'profile_url': instance.profileUrl,
      'username': instance.username,
      'display_name': instance.displayName,
      'description': instance.description,
      'instagram_url': instance.instagramUrl,
      'website_url': instance.websiteUrl,
      'is_verified': instance.isVerified,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      status: json['status'] as int?,
      msg: json['msg'] as String?,
      responseId: json['response_id'] as String?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'response_id': instance.responseId,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      totalCount: json['total_count'] as int?,
      count: json['count'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'count': instance.count,
      'offset': instance.offset,
    };
