class Item
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  field :description, type: String
  field :done, type: Boolean

  validates_presence_of :description
end
