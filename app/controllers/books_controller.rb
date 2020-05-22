class BooksController < ApplicationController

   def index
    @books = Book.all
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
         redirect_to :action => 'index'
      else
         @subjects = Subject.all
         render :action => 'new'
      end
   end
   
   def edit
      @book = Book.find(params[:id])
   end
   
   def update
      @book = Book.find(params[:id])
      
      if @book.update_attributes(book_param)
         redirect_to :action => 'show', :id => @book
      else
         @subjects = Subject.all
         render :action => 'edit'
      end
   end
   
   def delete
      Book.find(params[:id]).destroy
      redirect_to action: 'index'
   end
   
   def book_param
      params.require(:book).permit(:title, :price, :subject_id, :description)
   end
end
