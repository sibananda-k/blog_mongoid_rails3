class Article
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  field :name, type: String
  field :content, type: String
  field :published_on, type: String
  validates_presence_of :name
  embeds_many :comments
  belongs_to  :author
end
