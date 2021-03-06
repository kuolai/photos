class PhotosController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  def list
    @photo_pages, @photos = paginate :photos, :per_page => 10
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
    @all_categories = Category.find(:all, :order=>"name")
  end

  def create
    @photo = Photo.new(params[:photo])
    @photo.categories = Category.find(params[:categories]) if params[:categories]
    if @photo.save
      flash[:notice] = 'Photo was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @photo = Photo.find(params[:id])
    @all_categories = Category.find(:all, :order=>"name")
    @selected = @photo.categories.collect { |cat| cat.id.to_i }
  end

  def update
    @photo = Photo.find(params[:id])
    @photo.categories = Category.find(params[:categories]) if params[:categories]
    if @photo.update_attributes(params[:photo])
      flash[:notice] = 'Photo was successfully updated.'
      redirect_to :action => 'show', :id => @photo
    else
      render :action => 'edit'
    end
  end

  def destroy
    Photo.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
