class News {
  final String title, article;
  final List<String> images;

  News({
    this.images,
    this.title,
    this.article,
  });
}

// Demo News

List<News> demoNews = [
  News(
      images: ["assets/images/sena.png"],
      title: "Sena Failed Algorithms",
      article: "Sena got FZ from Algorithms"),
  News(
      images: ["assets/images/burak.png"],
      title: "Burak Kicked from Bilkent",
      article: "Not so Minnoş anymore"),
  News(
      images: ["assets/images/sena.png"],
      title: "Sena Failed Algorithms",
      article: "Sena got FZ from Algorithms"),
];
