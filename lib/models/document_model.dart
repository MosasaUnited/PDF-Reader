class Document {
  final String? docTitle;
  final String? docUrl;
  final int? pageNum;

  Document(this.docTitle, this.docUrl, this.pageNum);

  static List<Document> docList = [
    Document(
      "Rich Dad , Poor Dad",
      "https://www.pdfdrive.com/download.pdf?id=136494023&h=1aa480a89378f61c111d68cdd8632b97&u=cache&ext=pdf",
      241,
    ),
    Document(
      "Give And Take ",
      "https://www.pdfdrive.com/download.pdf?id=58864799&h=c55ee8a467a370dd11fcf9dcec21f426&u=cache&ext=pdf",
      260,
    ),
    Document(
      "Resisting Happiness: A True Story about Why We Sabotage Ourselves",
      "http://s3.amazonaws.com/dynamiccatholic.com/Best+Lent+Ever+2016/BLE+2017/Parish+Resources/RH_StudyGuide_V2.pdf",
      32,
    ),
  ];
}
