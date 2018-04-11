class BooksController < ApplicationController
  def index
  end

  def do_ordering
    @books = BookOrderingService.new(params[:books]).do_ordering

    render json: @books
  end
end
