feature "Customer goes to about us page" do
    scenario "Customer navigates to about us" do
        visit home_path
        click_link 'About'
        page.should have_content ('curated online store')
    end
end
