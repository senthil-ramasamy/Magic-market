require 'elasticsearch/model'

class Book < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  has_attached_file :asset,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method: 
  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }
  has_many :order_items
  default_scope { where(featured: true) } #this is for checking if producct is active or not 
end

Book.import
