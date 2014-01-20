class ProductsController < ApplicationController
  
  def products
     @items = Item.all
  end
  
end