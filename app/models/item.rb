class Item
  include Mongoid::Document
  field :description, type: String
  field :done, type: Boolean

  validates_presence_of :description
end
