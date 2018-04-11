class BooksController < ApplicationController
  def do_ordering
    @books = BookOrderingService.new(params[:books]).do_ordering

    render json: @books
  end
end
