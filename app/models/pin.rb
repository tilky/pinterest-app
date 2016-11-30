class Pin < ActiveRecord::Base
  validates_presence_of :title, :url, :slug, :text, :category_id
  validates_uniqueness_of :slug
  belongs_to :category
  belongs_to :user
  has_attached_file :image, default_url: "http://placebear.com/300/300" #styles: { medium: "300x300>", thumb: "60x60>" }, 
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end