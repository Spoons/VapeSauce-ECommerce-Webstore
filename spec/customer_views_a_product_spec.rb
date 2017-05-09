require 'rails_helper.rb'

feature"Customer views product" do
    scenario "Customer sucessfully navigates to the products page" do
        visit home_path
        click_button "Enter, ye noble gentlesir"
        expect(page).to have_content("Products")
    end
   scenario "Customer is on products page and clicks on a product" do
        visit products_path
        click_link ('Maid')
    end

end