class Feed {
  String avatar;
  String user_name;
  String location;
  String comment;
  String post_time;
  String image;
  int like_count;
  int comment_count;

  Feed(
      {required this.avatar,
      required this.user_name,
      required this.location,
      required this.comment,
      required this.post_time,
      required this.image,
      required this.like_count,
      required this.comment_count});
}
