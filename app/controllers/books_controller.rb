class BooksController < ApplicationController
  def tests
    books = [
      { id: 1, title: 'Java How To Program', author: 'Deitel & Deitel', edition_year: '2007' },
      { id: 2, title: 'Patterns of Enterprise Application Architecture', author:'Martin Fowler', edition_year: '2002' },
      { id: 3, title: 'Head First Design Patterns', author:  'Elisabeth Freeman', edition_year: '2004' },
      { id: 4, title: 'Internet & World Wide Web: How to Program', author: 'Deitel & Deitel', edition_year: '2007' }
    ]

    @books = BookOrderingService.new(books).do_ordering
  end
end
