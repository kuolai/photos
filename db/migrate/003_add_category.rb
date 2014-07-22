class AddCategory < ActiveRecord::Migration
  def self.up
    create_table "categories" do |category|
      category.column "name", :string
      category.column "parent_id", :integer
    end
    create_table("categories_photos", :id=>false) do |cp|
      cp.column "category_id", :integer
      cp.column "photo_id", :integer
    end
    Category.new do |category|
      category.name = "All"
      Photo.find(:all).each {|photo| category.photos << photo}
      category.save
    end
  end

  def self.down
    drop_table "categories"
    drop_table "categories_photos"
  end
end
