class SubjectsController < ApplicationController

    def index
        @books = Subject.all
    end

    def show
        @subject = Subject.find(params[:id])
    end

    def edit
        @subjects = Subject.all
    end

    def new
        @subjects = Subject.new
    end

    def create
        @subject = Subject.new(book_param)

        if @subject.save
            redirect_to :action => 'index'
        else
            render :action => 'new'
        end
    end

    def update
        @subject = Subject.find(params[:id])

        if @subject.update_attributes(subject_param)
            redirect_to action: "show", id: @subject
        else
            render action: "edit"
        end
    end

    def destroy
        @subject = Subject.find(params[:id])
        @subject.destroy
        redirect_to action: "index"
    end
end
