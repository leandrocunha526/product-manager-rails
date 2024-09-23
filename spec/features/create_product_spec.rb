# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Creating a Product", type: :feature do
  it "allows a user to create a product" do
    visit '/products/new'

    fill_in 'Name', with: 'Produto Teste'
    fill_in 'Description', with: 'Este é um produto de teste'
    fill_in 'Price', with: '99.99'

    click_button 'Create Product'

    expect(page).to have_content('Produto Teste')
    expect(page).to have_content('Este é um produto de teste')
    expect(page).to have_content('99.99')
  end
end
