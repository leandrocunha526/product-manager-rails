# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Editing a Product", type: :feature do
  let!(:product) { Product.create(name: 'Produto Teste', description: 'Este é um produto de teste', price: 99.99) }

  it "allows a user to edit a product" do
    visit "/products/#{product.id}/edit"

    expect(page).to have_current_path("/products/#{product.id}/edit")

    fill_in 'Name', with: 'Produto Editado'
    fill_in 'Description', with: 'Descrição atualizada'
    fill_in 'Price', with: '75'

    click_button 'Update Product'

    expect(page).to have_content('Produto Editado')
    expect(page).to have_content('Descrição atualizada')
    expect(page).to have_content('75')
  end
end
