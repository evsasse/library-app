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

    @books = @books.sort_by do |book|
      next unless @ordering_file.present? && @ordering_file['book'].present?
      b = []

      @ordering_file['book'].each do |key, value|
        attribute = book[key.to_sym]

        field = if !attribute.to_i.zero? && attribute != '0' && value == 'asc'
                  attribute.to_i
                elsif !attribute.to_i.zero? && attribute != '0'
                  attribute.to_i * -1
                elsif value == 'asc'
                  attribute
                else
                  attribute.reverse
                end

        b << field
      end
      b
    end

    @books
  end
end
