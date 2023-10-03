import 'package:json_annotation/json_annotation.dart';

part 'gifs_result_model.g.dart';

@JsonSerializable()
class Gifs {
  @JsonKey(name: "data")
  final List<Data>? data;
  @JsonKey(name: "pagination")
  final Pagination? pagination;
  @JsonKey(name: "meta")
  final Meta? meta;

  Gifs({
    this.data,
    this.pagination,
    this.meta,
  });

  Gifs copyWith({
    List<Data>? data,
    Pagination? pagination,
    Meta? meta,
  }) =>
      Gifs(
        data: data ?? this.data,
        pagination: pagination ?? this.pagination,
        meta: meta ?? this.meta,
      );

  factory Gifs.fromJson(Map<String, dynamic> json) => _$GifsFromJson(json);

  Map<String, dynamic> toJson() => _$GifsToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "type")
  final Type? type;
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "bitly_gif_url")
  final String? bitlyGifUrl;
  @JsonKey(name: "bitly_url")
  final String? bitlyUrl;
  @JsonKey(name: "embed_url")
  final String? embedUrl;
  @JsonKey(name: "username")
  final String? username;
  @JsonKey(name: "source")
  final String? source;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "rating")
  final Rating? rating;
  @JsonKey(name: "content_url")
  final String? contentUrl;
  @JsonKey(name: "source_tld")
  final String? sourceTld;
  @JsonKey(name: "source_post_url")
  final String? sourcePostUrl;
  @JsonKey(name: "is_sticker")
  final int? isSticker;
  @JsonKey(name: "import_datetime")
  final DateTime? importDatetime;
  @JsonKey(name: "trending_datetime")
  final String? trendingDatetime;
  @JsonKey(name: "images")
  final Images? images;
  @JsonKey(name: "analytics_response_payload")
  final String? analyticsResponsePayload;
  @JsonKey(name: "analytics")
  final Analytics? analytics;
  @JsonKey(name: "user")
  final User? user;

  Data({
    this.type,
    this.id,
    this.url,
    this.slug,
    this.bitlyGifUrl,
    this.bitlyUrl,
    this.embedUrl,
    this.username,
    this.source,
    this.title,
    this.rating,
    this.contentUrl,
    this.sourceTld,
    this.sourcePostUrl,
    this.isSticker,
    this.importDatetime,
    this.trendingDatetime,
    this.images,
    this.analyticsResponsePayload,
    this.analytics,
    this.user,
  });

  Data copyWith({
    Type? type,
    String? id,
    String? url,
    String? slug,
    String? bitlyGifUrl,
    String? bitlyUrl,
    String? embedUrl,
    String? username,
    String? source,
    String? title,
    Rating? rating,
    String? contentUrl,
    String? sourceTld,
    String? sourcePostUrl,
    int? isSticker,
    DateTime? importDatetime,
    String? trendingDatetime,
    Images? images,
    String? analyticsResponsePayload,
    Analytics? analytics,
    User? user,
  }) =>
      Data(
        type: type ?? this.type,
        id: id ?? this.id,
        url: url ?? this.url,
        slug: slug ?? this.slug,
        bitlyGifUrl: bitlyGifUrl ?? this.bitlyGifUrl,
        bitlyUrl: bitlyUrl ?? this.bitlyUrl,
        embedUrl: embedUrl ?? this.embedUrl,
        username: username ?? this.username,
        source: source ?? this.source,
        title: title ?? this.title,
        rating: rating ?? this.rating,
        contentUrl: contentUrl ?? this.contentUrl,
        sourceTld: sourceTld ?? this.sourceTld,
        sourcePostUrl: sourcePostUrl ?? this.sourcePostUrl,
        isSticker: isSticker ?? this.isSticker,
        importDatetime: importDatetime ?? this.importDatetime,
        trendingDatetime: trendingDatetime ?? this.trendingDatetime,
        images: images ?? this.images,
        analyticsResponsePayload:
            analyticsResponsePayload ?? this.analyticsResponsePayload,
        analytics: analytics ?? this.analytics,
        user: user ?? this.user,
      );

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Analytics {
  @JsonKey(name: "onload")
  final Onclick? onload;
  @JsonKey(name: "onclick")
  final Onclick? onclick;
  @JsonKey(name: "onsent")
  final Onclick? onsent;

  Analytics({
    this.onload,
    this.onclick,
    this.onsent,
  });

  Analytics copyWith({
    Onclick? onload,
    Onclick? onclick,
    Onclick? onsent,
  }) =>
      Analytics(
        onload: onload ?? this.onload,
        onclick: onclick ?? this.onclick,
        onsent: onsent ?? this.onsent,
      );

  factory Analytics.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticsToJson(this);
}

@JsonSerializable()
class Onclick {
  @JsonKey(name: "url")
  final String? url;

  Onclick({
    this.url,
  });

  Onclick copyWith({
    String? url,
  }) =>
      Onclick(
        url: url ?? this.url,
      );

  factory Onclick.fromJson(Map<String, dynamic> json) =>
      _$OnclickFromJson(json);

  Map<String, dynamic> toJson() => _$OnclickToJson(this);
}

@JsonSerializable()
class Images {
  @JsonKey(name: "original")
  final FixedHeight? original;
  @JsonKey(name: "fixed_height")
  final FixedHeight? fixedHeight;
  @JsonKey(name: "fixed_height_downsampled")
  final FixedHeight? fixedHeightDownsampled;
  @JsonKey(name: "fixed_height_small")
  final FixedHeight? fixedHeightSmall;
  @JsonKey(name: "fixed_width")
  final FixedHeight? fixedWidth;
  @JsonKey(name: "fixed_width_downsampled")
  final FixedHeight? fixedWidthDownsampled;
  @JsonKey(name: "fixed_width_small")
  final FixedHeight? fixedWidthSmall;

  Images({
    this.original,
    this.fixedHeight,
    this.fixedHeightDownsampled,
    this.fixedHeightSmall,
    this.fixedWidth,
    this.fixedWidthDownsampled,
    this.fixedWidthSmall,
  });

  Images copyWith({
    FixedHeight? original,
    FixedHeight? fixedHeight,
    FixedHeight? fixedHeightDownsampled,
    FixedHeight? fixedHeightSmall,
    FixedHeight? fixedWidth,
    FixedHeight? fixedWidthDownsampled,
    FixedHeight? fixedWidthSmall,
  }) =>
      Images(
        original: original ?? this.original,
        fixedHeight: fixedHeight ?? this.fixedHeight,
        fixedHeightDownsampled:
            fixedHeightDownsampled ?? this.fixedHeightDownsampled,
        fixedHeightSmall: fixedHeightSmall ?? this.fixedHeightSmall,
        fixedWidth: fixedWidth ?? this.fixedWidth,
        fixedWidthDownsampled:
            fixedWidthDownsampled ?? this.fixedWidthDownsampled,
        fixedWidthSmall: fixedWidthSmall ?? this.fixedWidthSmall,
      );

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class FixedHeight {
  @JsonKey(name: "height")
  final String? height;
  @JsonKey(name: "width")
  final String? width;
  @JsonKey(name: "size")
  final String? size;
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "mp4_size")
  final String? mp4Size;
  @JsonKey(name: "mp4")
  final String? mp4;
  @JsonKey(name: "webp_size")
  final String? webpSize;
  @JsonKey(name: "webp")
  final String? webp;
  @JsonKey(name: "frames")
  final String? frames;
  @JsonKey(name: "hash")
  final String? hash;

  FixedHeight({
    this.height,
    this.width,
    this.size,
    this.url,
    this.mp4Size,
    this.mp4,
    this.webpSize,
    this.webp,
    this.frames,
    this.hash,
  });

  FixedHeight copyWith({
    String? height,
    String? width,
    String? size,
    String? url,
    String? mp4Size,
    String? mp4,
    String? webpSize,
    String? webp,
    String? frames,
    String? hash,
  }) =>
      FixedHeight(
        height: height ?? this.height,
        width: width ?? this.width,
        size: size ?? this.size,
        url: url ?? this.url,
        mp4Size: mp4Size ?? this.mp4Size,
        mp4: mp4 ?? this.mp4,
        webpSize: webpSize ?? this.webpSize,
        webp: webp ?? this.webp,
        frames: frames ?? this.frames,
        hash: hash ?? this.hash,
      );

  factory FixedHeight.fromJson(Map<String, dynamic> json) =>
      _$FixedHeightFromJson(json);

  Map<String, dynamic> toJson() => _$FixedHeightToJson(this);
}

enum Rating {
  @JsonValue("g")
  G
}

enum Type {
  @JsonValue("gif")
  GIF
}

@JsonSerializable()
class User {
  @JsonKey(name: "avatar_url")
  final String? avatarUrl;
  @JsonKey(name: "banner_image")
  final String? bannerImage;
  @JsonKey(name: "banner_url")
  final String? bannerUrl;
  @JsonKey(name: "profile_url")
  final String? profileUrl;
  @JsonKey(name: "username")
  final String? username;
  @JsonKey(name: "display_name")
  final String? displayName;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "instagram_url")
  final String? instagramUrl;
  @JsonKey(name: "website_url")
  final String? websiteUrl;
  @JsonKey(name: "is_verified")
  final bool? isVerified;

  User({
    this.avatarUrl,
    this.bannerImage,
    this.bannerUrl,
    this.profileUrl,
    this.username,
    this.displayName,
    this.description,
    this.instagramUrl,
    this.websiteUrl,
    this.isVerified,
  });

  User copyWith({
    String? avatarUrl,
    String? bannerImage,
    String? bannerUrl,
    String? profileUrl,
    String? username,
    String? displayName,
    String? description,
    String? instagramUrl,
    String? websiteUrl,
    bool? isVerified,
  }) =>
      User(
        avatarUrl: avatarUrl ?? this.avatarUrl,
        bannerImage: bannerImage ?? this.bannerImage,
        bannerUrl: bannerUrl ?? this.bannerUrl,
        profileUrl: profileUrl ?? this.profileUrl,
        username: username ?? this.username,
        displayName: displayName ?? this.displayName,
        description: description ?? this.description,
        instagramUrl: instagramUrl ?? this.instagramUrl,
        websiteUrl: websiteUrl ?? this.websiteUrl,
        isVerified: isVerified ?? this.isVerified,
      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Meta {
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "msg")
  final String? msg;
  @JsonKey(name: "response_id")
  final String? responseId;

  Meta({
    this.status,
    this.msg,
    this.responseId,
  });

  Meta copyWith({
    int? status,
    String? msg,
    String? responseId,
  }) =>
      Meta(
        status: status ?? this.status,
        msg: msg ?? this.msg,
        responseId: responseId ?? this.responseId,
      );

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Pagination {
  @JsonKey(name: "total_count")
  final int? totalCount;
  @JsonKey(name: "count")
  final int? count;
  @JsonKey(name: "offset")
  final int? offset;

  Pagination({
    this.totalCount,
    this.count,
    this.offset,
  });

  Pagination copyWith({
    int? totalCount,
    int? count,
    int? offset,
  }) =>
      Pagination(
        totalCount: totalCount ?? this.totalCount,
        count: count ?? this.count,
        offset: offset ?? this.offset,
      );

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
