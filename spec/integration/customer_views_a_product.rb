require 'rails_helper.rb'

feature "Customer views product" do
    scenario "Customer sucessfully navigates to the products page" do
        visit home_path
        click_link "Enter, ye noble gentlesir"
        expect(page).to have_content("Products")
    end
   
   

end