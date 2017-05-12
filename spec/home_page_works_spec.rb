feature "home page works" do
    scenario "customer hits enter store from home page" do
        visit home_path
        click_button "Enter"
        expect(page).to have_content "Maid"
    end

    scenario "customer goes to home page" do
        visit home_path
        expect(page).to have_content "About VapeSauce"
    end
end
