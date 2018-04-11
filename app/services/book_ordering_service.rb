require 'yaml'

class BookOrderingService
  include Comparable

  def initialize(books)
    raise OrderingException, 'Books is nil' if books.nil?
    @books = books
    @ordering_file = YAML.load_file('config/application.yml')
  end

  def do_ordering
    return {} if @books.empty?


    @books
  end
end
