class Series {
  int? id;
  String? title;
  String? releaseDate;
  String? lastAiredDate;
  int? season;
  int? numberEpisodes;
  String? overview;
  String? coverUrl;
  String? trailerUrl;
  String? directedBy;
  int? phase;
  String? saga;
  String? imdbId;

  Series.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    releaseDate = json['release_date'];
    lastAiredDate = json['last_aired_date'];
    season = json['season'];
    numberEpisodes = json['number_episodes'];
    overview = json['overview'];
    coverUrl = json['cover_url'];
    trailerUrl = json['trailer_url'];
    directedBy = json['directed_by'];
    phase = json['phase'];
    saga = json['saga'];
    imdbId = json['imdb_id'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['title'] = this.title;
  //   data['release_date'] = this.releaseDate;
  //   data['last_aired_date'] = this.lastAiredDate;
  //   data['season'] = this.season;
  //   data['number_episodes'] = this.numberEpisodes;
  //   data['overview'] = this.overview;
  //   data['cover_url'] = this.coverUrl;
  //   data['trailer_url'] = this.trailerUrl;
  //   data['directed_by'] = this.directedBy;
  //   data['phase'] = this.phase;
  //   data['saga'] = this.saga;
  //   data['imdb_id'] = this.imdbId;
  //   return data;
  // }
}
