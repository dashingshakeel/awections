class Product < ApplicationRecord
  belongs_to :user 
  has_one :auction
  def has_auction?
    auction.present?
  end
end
