class WelcomeController < ApplicationController
  def register
  end

  # GET /urls
  # GET /urls.json
  def index
    @urls = Url.all
    @all = Student.all
    @student = Student.new 
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @urls }
    end
  end

  def create
    respond_to do |format|
#      raise(params.inspect)
      if @student = Student.create!({:name =>params[:student][:name],:course => 'CS 132A'})
        @student.urls.create!({:name => '',:url => params[:url]})
        format.html { redirect_to  '/urls', notice: 'Url was successfully created.' }
        format.json { render json: @url, status: :created, location: @url }
      end
    end
  end
end
