require 'rails_helper.rb'

feature"Customer views product" do
    scenario "Customer sucessfully navigates to the products page" do
        visit home_path
        click_button "Enter, ye noble gentlesir"
        expect(page).to have_content("Products")
    end
   scenario "Customer is on products page and clicks on a product" do
        visit products_path
        click_link "http://vapesauce-miffi.c9users.io/product/how-to-be-a-pickup-artist"
        expect(page).to have_content("Having a hard time with the m'ladies? Keep getting friendzoned? Consider this your one way ticket out of the friendzone! Go from fake waifus to real girls!")
        
end

end