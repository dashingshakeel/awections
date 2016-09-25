require "test_helper"

class PlaceBidTest <MiniTest::Test
  def test_it_places_a_bid
    user= User.create! email: "shkldon0@gmail.com", password: "123456"
    another_user= User.create! email: "shkeelrauf@gmail.com", password: "123456"
    product=Product.create! name: "some product"
    auction=Auction.create! value: 10, product_id: product.id

    service=PlaceBid.new value: 11  , user_id: another_user, auction_id: auction.id 
    service.execute 

    assert_equal 11, auction.current_bid
  end
end