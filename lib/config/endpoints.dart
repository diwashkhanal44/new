class Endpoints {
  static const scheme = "http";

  // static const baseWithoutSchema = "youback.prosiddhi.com";
  // static const baseWithScheme = "$scheme://youback.prosiddhi.com";

  static const baseWithoutSchema = "139.59.65.179:8888";
  static const baseWithScheme = "$scheme://139.59.65.179:8888";
  static const basePortLess = "139.59.65.179";
  static const port = 8888;

  static const login = "/api/login";
  static const profile = "/api/publisher/profile";
  static const activityLogs = "/api/publisher/activity-logs";
  static const register = "/api/signup";

  static const getAllTheLanguages = '/api/languages/all';

  static const savedNews = "/api/publisher/news/saved";
  static const saveNews = "/api/publisher/news/{newsid}/save";
  static const saveRemoveNews = "/api/publisher/news/{newsid}/remove";

  //! authorization not needed
  static const latestNews = "api/latest-news/{language}";
  static const categoriyWiseNews = "/api/news/{category-slug}";
  static const trends = "/api/news/trends/{trend}";

  static const singleNewsView = '/api/{id}/news';
  static const updateReactionOnASession = '/api/reaction/{reactionId}';
  static const storeReactionOnASession = '/api/news/reaction/{newsid}';
  static const clickCount = '/api/{newsid}/news-clicked';

  static const getCategoriesOfnews = "/api/categories/all";
  static const getGoldSilverPrice = "/api/gold-silver-rates";
  static const followSourceAndFeed = "/api/publisher/{source|feedid}/follow";

  static const topicsByLanguage = '/api/tags/featured/{langcode}';
  static const newsByTopic = '/api/news/topic/{topicslug}';

  static const fetchMainComments = "/api/comments/{newsId}";
  static const fetchReplyComments = "/api/comments/{commentId}/reply";
  static const postMainComment = "/api/comments";
  static const postReplyComment = "/api/comments/{commentId}/reply";
  static const deleteComment = "/api/comments/delete";

  static const newsSources = '/api/news-sources';
  static const publisherDetails = '/api/{publisher_id}/publishers';
  static const newsByPublisherId = '/api/source/{publisher_id}/news';

  static const videos = '/api/videos/all';
  static const videosPublisher = '/api/videos/{publisherId}/all';

  static const radios = '/api/radios/all';
  static const getFavoriteRadio = '/api/publisher/radios/favorite';
  static const toggleFavoriteRadio = '/api/publisher/radios/{radioId}/favorite';

  static const socialLoginGoogle = '/api/google/login';
  static const socialLoginFacebook = '/api/facebook/login';

  static const socialRegisterGoogle = '/api/google/register';
  static const socialRegisterFacebook = '/api/facebook/register';

  static const followedPublishers = '/api/publisher/followed';

  static const weather = '/api/weather';

  static const calender_tithis = "/api/calendar-public/tithi";
  static const calender_holidays_events = "/api/calendar-public";

  static const profilePost = '/api/publisher/profile';
}
