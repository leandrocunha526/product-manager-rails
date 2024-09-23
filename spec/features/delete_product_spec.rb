# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Deleting a Product", type: :feature do
  let!(:product) { Product.create(name: 'Produto Teste', description: 'Descrição do produto', price: 50.00) }

  it "allows a user to delete a product" do
    visit '/products'

    expect(page).to have_content('Produto Teste')

    click_link 'Delete', href: "/products/#{product.id}"

    save_and_open_page

    expect(page).to have_current_path('/products')

    expect(page).not_to have_content('Produto Teste')
    expect { product.reload }.to raise_error(ActiveRecord::RecordNotFound)
  end
end
