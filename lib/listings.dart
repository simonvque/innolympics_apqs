class Listings {
  final String job;
  final String loc;
  final int bookmark; 
  final String desc;

  Listings(this.job, this.loc, this.bookmark, this.desc);
}

List listings = [
  Listings('Plumber Urgently Needed!','Malate, NCR', 0,
  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
  Listings('Looking for a Carpenter','Malate, NCR', 0,
  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
  Listings('Are any cleaners available? Need assistance','Malate, NCR', 1,
  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem IpsumLorem Ipsum Lorem Ipsum'),
];