class Document {
  final String? docTitle;
  final String? docUrl;
  final int? pageNum;

  Document(this.docTitle, this.docUrl, this.pageNum);

  static List<Document> docList = [
    Document(
      "Beginning XNA 3.0 Game Programming",
      "https://www.googleapis.com/books/v1/volumes/9GwrmHRl490C",
      437,
    ),
    Document(
      "XNA 3.0 Game Programming Recipes",
      "https://www.googleapis.com/books/v1/volumes/1sIzdipoXuQC",
      663,
    ),
    Document(
      "Artificial Intelligence and Games",
      "https://www.googleapis.com/books/v1/volumes/HK1MDwAAQBAJ",
      337,
    ),
  ];
}
