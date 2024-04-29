import 'package:flutter/material.dart';

class BookListPage extends StatelessWidget {
  final List<Book> books = [
    Book(
      imageUrl: 'https://m.media-amazon.com/images/I/71x-gFN7xrL._AC_UF1000,1000_QL80_.jpg',
      title: 'Matilda',
      author: 'Roald Dahl',
    ),
    Book(
      imageUrl: 'https://m.media-amazon.com/images/I/71x-gFN7xrL._AC_UF1000,1000_QL80_.jpg',
      title: 'Matilda',
      author: 'Roald Dahl',
    ),
    Book(
      imageUrl: 'https://m.media-amazon.com/images/I/71x-gFN7xrL._AC_UF1000,1000_QL80_.jpg',
      title: 'Matilda',
      author: 'Roald Dahl',
    ),
    Book(
      imageUrl: 'https://m.media-amazon.com/images/I/71x-gFN7xrL._AC_UF1000,1000_QL80_.jpg',
      title: 'Matilda',
      author: 'Roald Dahl',
    ),
    Book(
      imageUrl: 'https://m.media-amazon.com/images/I/71x-gFN7xrL._AC_UF1000,1000_QL80_.jpg',
      title: 'Matilda',
      author: 'Roald Dahl',
    ),
    Book(
      imageUrl: 'https://m.media-amazon.com/images/I/71x-gFN7xrL._AC_UF1000,1000_QL80_.jpg',
      title: 'Matilda',
      author: 'Roald Dah1',
    ),
    Book(
      imageUrl: 'https://m.media-amazon.com/images/I/71x-gFN7xrL._AC_UF1000,1000_QL80_.jpg',
      title: 'Matilda',
      author: 'Roald Dahl',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookListItem(book: books[index]);
        },
      ),
    );
  }
}

class BookListItem extends StatelessWidget {
  final Book book;

  const BookListItem({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            book.imageUrl,
            width: 80,
            height: 120,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'by ${book.author}',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Book {
  final String imageUrl;
  final String title;
  final String author;

  Book({
    required this.imageUrl,
    required this.title,
    required this.author,
  });
}
