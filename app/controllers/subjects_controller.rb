class SubjectsController < ApplicationController

    def index
        @subjects = Subject.all
    end

    def show
        @subject = Subject.find(params[:id])
    end

    def edit
        @subject = Subject.all
    end

    def new
        @subjects = Subject.new
    end

    def create
        @subject = Subject.new(subject_param)

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
            render action: 'edit'
        end
    end

    def destroy
        @subject = Subject.find(params[:id])
        @subject.destroy
        redirect_to action: "index"
    end

    def book_param
        params.require(:subjects).permit(:name)
    end
end
