user = User.where(
  first_name: 'Jeremy',
  last_name: 'Clarkson',
  email: 'clarkson@topgear.com'
).first_or_create

book = Book.where(
  name: 'Top 10 Fastest Cars of All Time',
  author: 'Some Guy'
).first_or_create
