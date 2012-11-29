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
    @student = Student.new({:name =>params[:student][:name],:course => 'CS 132A'})

    respond_to do |format|
#      raise(params.inspect)
      if @student.save and @student.urls.create!({:name => '',:url => params[:url]})
        raise @student.inspect
        format.html { redirect_to  '/urls', notice: 'Url was successfully created.' }
        format.json { render json: @url, status: :created, location: @url }
      else
        raise @student.inspect
        format.html { redirect_to  '/', notice: @student }
        format.json { render json: @url.errors, status: :unprocessable_entity }
      end

    end
  end
end
