require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do

    before(:each) do
      @category = Category.new(name: 'Test Category')
      @product = @category.products.new(name: 'test name', price: 2, quantity: 0)
    end

    it 'product should belong to a category' do
      expect(@product.category).to be_present
    end

    it 'product should have a name between 2 to 100 characters' do
      expect(@product.name).to be_present
      expect(@product.name.length).to be_between(2, 100)
    end

    it 'product should have a valid price that is larger than 0' do
      expect(@product.price).to be_present
      expect(@product.price).to be > 0
    end

    it 'product should have quantity larger or equal to 0' do
      expect(@product.quantity).to be_present
      expect(@product.quantity).to be >= 0
    end

    # # after(:all) do
    # #   @save = @product.create
    # # end

    # it 'product should save after all other validations are done' do
    #   expect(@product.create).to be true
    # end

  end

end
