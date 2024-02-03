class LancerLink {
  final String? title;
  final String? link;
  final String? imageUrl;

  LancerLink({this.title, this.link, this.imageUrl});

  factory LancerLink.contentLink({
    required String title,
    required String link,
  }) =>
      LancerLink(title: title, link: link);

  factory LancerLink.resourceFileLink({
    required String title,
    required String link,
    required String imageUrl,
  }) =>
      LancerLink(title: title, link: link, imageUrl: imageUrl);
}
