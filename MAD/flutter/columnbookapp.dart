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
      author: 'Roald Dahl',
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookGridItem(book: books[index]);
        },
      ),
    );
  }
}

class BookGridItem extends StatelessWidget {
  final Book book;

  const BookGridItem({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              book.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.0),
                Text(
                  'by ${book.author}',
                  style: TextStyle(fontSize: 14.0),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
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
