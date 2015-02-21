class Post < ActiveRecord::Base
   belongs_to :admin 
  has_many :comments, through: :places
  has_one :member, through: :places
  has_and_belongs_to_many :category
  has_many :embeds,foreign_key: "postid",dependent: :destroy
  validates :title, presence: true, length: { minimum: 5}
  validates :text, presence: true
  mount_uploader :postimage ,PostimageUploader
  
  auto_html_for :body do
    html_escape
    image
    youtube(:width => 400, :height => 250, :autoplay => true)
    dailymotion 
    soundcloud
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end 
end
