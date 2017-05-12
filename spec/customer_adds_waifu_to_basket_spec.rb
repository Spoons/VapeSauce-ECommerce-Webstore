require 'rails_helper.rb'

feature "Customer adds product to cart" do

   scenario "Customer adds maid waifu to the cart" do
       visit products_path
       click_link ('Maid Waifu')
       click_link ('Add to')
       click_link ('Cart')
       page.should have_content ('basket')
       page.should have_content ('Maid')
   end

end
