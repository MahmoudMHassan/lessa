class Post < ActiveRecord::Base
  require 'auto_html'
   belongs_to :admin 
  has_many :comments, through: :places
  has_one :member, through: :places
  has_many :taggings ,dependent: :destroy
  has_many :tags, through: :taggings
  validates :title, presence: true, length: { minimum: 5}
  validates :text, presence: true
  mount_uploader :postimage ,PostimageUploader
  
  auto_html_for :text do
    html_escape
    image
    youtube(:width => 400, :height => 250, :autoplay => true)
    dailymotion 
    soundcloud
    vimeo
    simple_format
    link :target => "_blank", :rel => "nofollow"
    
  end 
  def tag_list
  tags.join(", ")
end

def tag_list=(tags_string)
 tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
  new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
  self.tags = new_or_found_tags
end
end
