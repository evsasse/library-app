# A simple Ruby application

* Ruby version
  * 2.5.1

* Run command below on terminal (in project folder)
  * rails s

* Go to tests (Books hardcoded)
  * http://127.0.0.1:3000/books/tests

* Check Service from terminal - Run commands below
  * irb
  * load './app/exceptions/ordering_exception.rb'
  * load './app/services/book_ordering_service.rb'
  * BookOrderingService.new(books).do_ordering
