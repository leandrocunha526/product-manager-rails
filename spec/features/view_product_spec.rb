# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Viewing a Product", type: :feature do
  let!(:product) { Product.create(name: 'Produto Teste', description: 'Este é um produto de teste', price: 99.99) }

  it "allows a user to view a product" do
    visit "/products/#{product.id}"

    expect(page).to have_content('Produto Teste')
    expect(page).to have_content('Este é um produto de teste')
    expect(page).to have_content('99.99')
  end
end
