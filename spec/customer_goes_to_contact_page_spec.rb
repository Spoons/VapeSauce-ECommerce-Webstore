feature "Customer goes to contact page" do
    scenario "Customer navigates to cantact us page" do
        visit home_path
        click_link 'Contact'
        page.should have_content ('notreal')
    end
    scenario "Customer submits feetback" do
        visit home_path
        click_link 'Contact'
        page.should have_content ('notreal')
        fill_in('name', :with=>'Rspec')
        fill_in('email', :with=>'rspec@ruby.com')
        click_button('Submit')
    end
end
