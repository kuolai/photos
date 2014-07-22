class AddSlideshow < ActiveRecord::Migration
  def self.up
    create_table "slides" do |slide|
      slide.column "position", :integer
      slide.column "photo_id", :integer
      slide.column "slideshow_id", :integer
    end
    create_table "slideshows" do |slideshow|
      slideshow.column "name", :string
      slideshow.column "created_at", :datetime
    end
  end

  def self.down
    drop_table "slides"
    drop_table "slideshows"
  end
end
