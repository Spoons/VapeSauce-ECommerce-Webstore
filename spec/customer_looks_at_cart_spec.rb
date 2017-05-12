feature "customer looks at cart" do
    scenario "Customer looks at cart" do
        visit home_path
        click_link('Cart')
        page.should have_content ('basket')
    end
end
