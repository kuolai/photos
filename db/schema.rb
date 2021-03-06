# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 3) do

  create_table "categories", :force => true do |t|
    t.column "name", :string
    t.column "parent_id", :integer
  end

  create_table "categories_photos", :id => false, :force => true do |t|
    t.column "category_id", :integer
    t.column "photo_id", :integer
  end

  create_table "photos", :force => true do |t|
    t.column "filename", :string
  end

  create_table "slides", :force => true do |t|
    t.column "position", :integer
    t.column "photo_id", :integer
    t.column "slideshow_id", :integer
  end

  create_table "slideshows", :force => true do |t|
    t.column "name", :string
    t.column "created_at", :datetime
  end

end
