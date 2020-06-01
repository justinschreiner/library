class PublishersController < ApplicationController
    
    def index
        @publishers = Publisher.all
    end
    
    def show
        @publishers = Publisher.find(params[:id])
    end
    
    def edit
        @publisher = publisher.all
    end
    
    def new
        @publishers = publisher.new
    end
    
    def create
        @publisher = publisher.new(publisher_param)
    
        if @publisher.save
        redirect_to action: "index"
        else
        render action: "new"
        end
    end
    
    def update
        @publisher = publisher.find(params[:id])
    
        if @publisher.update_attributes(publisher_param)
        redirect_to action: "show", id: @publisher
        else
        render action: "edit"
        end
    end
    
    def destroy
        @publisher = publisher.find(params[:id])
        @publisher.destroy
        redirect_to action: "index"
    end
    
    def book_param
        params.require(:publishers).permit(:name)
    end    
end
