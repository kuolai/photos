class CategoriesController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  def list
    @all_categories = Category.find(:all, :order=>"name")
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    @all_categories = Category.find(:all, :order=>"name")
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = 'Category was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
    @all_categories = Category.find(:all, :order=>"name")
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = 'Category was successfully updated.'
      redirect_to :action => 'show', :id => @category
    else
      render :action => 'edit'
    end
  end

  def destroy
    category=Category.find(params[:id])
    if category.parent
      category.destroy
      flash[:notice] = "Category was successfully destroyed."
    else
      flash[:notice] = "You cannot delete the root category!"
    end
    redirect_to :action => 'list'
  end
end
