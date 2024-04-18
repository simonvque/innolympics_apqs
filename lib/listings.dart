class Listings {
  final String job;
  final String desc;
  final String name; 
  final String detail;
  final String chat;

  Listings(this.job, this.desc, this.name, this.detail, this.chat);
}

List listings = [
  Listings('Plumber Urgently Needed!','Offering 500 PHP', 'Juan De Los Santos',
  '', 'Bookmarked your post'),
  Listings('Looking for a Carpenter','Offering 1,500 PHP', 'Maria Aguinaldo',
  '', 'Messaged you'),
  Listings('Are any cleaners available? Need assistance','Roberto De La Cruz', 'Julia Alberto',
  '', 'Messaged you'),
];

List bookmarks = [
  Listings('Plumber Urgently Needed!','Offering 500 PHP','Juan De Los Santos',
  'I recently installed a pipe and now its leaking from its base.'
  ' I tried tightening its bolts but it keeps leaking. I am looking for a plumber who can help me', ''),
];