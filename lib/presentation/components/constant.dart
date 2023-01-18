//  ----------------app routes-----------------
//  page route name
const String homeLayoutRoute = '/';
const String moviesLayoutRoute = '/movieLayout';
const String seriesLayoutRoute = '/SeriesLayout';
const String detailsLayoutRout = '/detailsLayout';
//---------------------------------------------

//---------------API---------------------------
const String baseUrl = 'https://mcuapi.herokuapp.com/api/v1/';
const String getAllMovies = 'movies';
const String getAllSeries = 'tvshows';
const String dataList = 'data';
//---------------------------------------------

//----------Movie and Series Details-----------
const String itemReleaseDate = 'Release Date';
const String itemBoxOffice = 'Box Office';
const String movieDuration = 'Movie Duration';
const String itemOverview = 'Overview';
const String itemDirectedBy = 'Directed By';
const String itemPhase = 'Phase';
const String itemSaga = 'Saga';
const String itemImdbId = 'Imdb Id';
const String seriesLastAiredDate = 'Last Aired Date';
const String seriesSeason = 'Season';
const String seriesNumberEpisodes = 'Number Episodes';
const String upcoming = 'Upcoming';
//------------------------------------------------------

//-----------------URLs trailer-------------------------
const List<String> moviesUrl = [
  'https://www.youtube.com/watch?v=8ugaeA-nMTc', //1
  'https://www.youtube.com/watch?v=xbqNb2PFKKA', //2
  'https://www.youtube.com/watch?v=qsRZghNciIo', //3
  'https://www.youtube.com/watch?v=JOddp-nlNvQ', //4
  'https://www.youtube.com/watch?v=JerVrbLldXw', //5
  'https://www.youtube.com/watch?v=eOrNdBpGMv8', //6
  'https://www.youtube.com/watch?v=f_h95mEd4TI', //7
  'https://www.youtube.com/watch?v=npvJ9FTgZbM', //8
  'https://www.youtube.com/watch?v=tbayiPxkUMM', //9
  'https://www.youtube.com/watch?v=d96cjJhvlMA', //10
  'https://www.youtube.com/watch?v=tmeOjFno6Do', //11
  'https://www.youtube.com/watch?v=pWdKf3MneyI', //12
  'https://www.youtube.com/watch?v=43NWzay3W4s', //13
  'https://www.youtube.com/watch?v=HSzx-zryEgM', //14
  'https://www.youtube.com/watch?v=wUn05hdkhjM', //15
  'https://www.youtube.com/watch?v=39udgGPyYMg', //16
  'https://www.youtube.com/watch?v=ue80QwXMRHg', //17
  'https://www.youtube.com/watch?v=xjDjIWPwcPU', //18
  'https://www.youtube.com/watch?v=6ZfuNTqbHE8', //19
  'https://www.youtube.com/watch?v=8_rTIAOohas', //20
  'https://www.youtube.com/watch?v=0LHxvxdRnYc', //21
  'https://www.youtube.com/watch?v=TcMBFSGVi1c', //22
  'https://www.youtube.com/watch?v=Nt9L1jCKGnE', //23
  'https://www.youtube.com/watch?v=ybji16u608U', //24
  'https://www.youtube.com/watch?v=8YjFbMbfXaQ', //25
  'https://www.youtube.com/watch?v=x_me3xsvDgk', //26
  'https://www.youtube.com/watch?v=JfVOs4VSpmA', //27
  'https://www.youtube.com/watch?v=aWzlQ2N6qqg', //28
  'https://www.youtube.com/watch?v=Go8nTmfrQd8', //29
  'https://www.youtube.com/watch?v=_Z3QKkl1WyM', //30
  'https://www.youtube.com/watch?v=5WfTEZJnv_8', //31
  'https://www.youtube.com/watch?v=u3V5KDHRQvk', //32
  'https://www.youtube.com/watch?v=n0JFEZmawpM', //33
  'https://www.youtube.com/watch?v=6DMuCXXonFs', //34
  'https://www.youtube.com/watch?v=DliraEXWN2I', //35
  'https://www.youtube.com/watch?v=Jq52mKdx_0w', //36
  '', //37
  '', //38
  'https://www.youtube.com/watch?v=XwHQ1rSj6GI', //39
  'https://www.youtube.com/watch?v=ldGpwnBEMMU', //40
];
