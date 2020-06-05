# frozen_string_literal: true

class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @q = Book.ransack(params[:q])
    @books = @q.result(distinct: true).paginate(page: params[:page], per_page: 12)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_param)

    if @book.save
      redirect_to action: 'index'
    else
      render action: 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update_attributes(book_param)
      redirect_to action: 'show', id: @book
    else
      render action: 'edit'
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to action: 'index'
  end

  def book_param
    params.require(:book).permit(:title, :price, :subject_id, :description, :page)
  end
end
