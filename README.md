# A simple Ruby application

* Ruby version
  * 2.5.1

# Getting Started

1. Clone the repo
```
$ git clone https://github.com/Miratan/library-app.git
cd library-app
```

2. Install dependencies
```
$ bundle install
```

3. Run
```
$ rails s
```

4. Send a POST to http://127.0.0.1:3000/books/do_ordering
```
{
  "books": [
    { "id": 1, "title": "Java How To Program", "author": "Deitel & Deitel", "edition_year": "2007" },
    { "id": 2, "title": "Patterns of Enterprise Application Architecture", "author": "Martin Fowler", "edition_year": "2002" },
    { "id": 3, "title": "Head First Design Patterns", "author": "Elisabeth Freeman", "edition_year": "2004" },
    { "id": 4, "title": "Internet & World Wide Web: How to Program", "author": "Deitel & Deitel", "edition_year": "2007" }
  ]
}
```
