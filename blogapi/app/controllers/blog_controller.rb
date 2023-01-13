class BlogController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index 
        render json: Blog.all
    end
    def show 
        b = Blog.find(params[:id])
        render json: b
    end
    def create
        
        Blog.create('title': params[:title], 'content': params[:content], 'image': params[:image])
        render json: "Data Added"
       
    end
end
