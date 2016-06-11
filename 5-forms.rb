# app/controllers/products_controller.rb

class ProductsController < ApplicationController
  def new
  end

  def create
  end
end

############################################

# config/routes.rb

resources :products, only: [:new, :create]

############################################

def new
  @product = Product.new
end

############################################

# app/views/products/new.html.erb

<%= form_for @product do |f| %>
  <%= f.text_field :name %>
  <%= f.submit "Add new product" %>
<% end %>

############################################

# params
{ "product" => { "name" => "Notebook" } }

############################################

def create
  Product.create!(params.require(:product).permit(:name))
  redirect_to products_url
end

############################################

class Product < ActiveRecord::Base
  validates_presence_of :name
end

############################################

Product.new(name: "").valid?

############################################

def create
  @product = Product.new(product_params)
  if @product.save
    redirect_to products_url
  else
    render :new
  end
end

def product_params
  params.require(:product).permit(:name)
end

############################################

<ul>
  <% @product.errors.full_messages.each do |error| %>
    <li>
      <%= error %>
    </li>
  <% end %>
</ul>

############################################

rails generate model Variant product:references name:string

############################################

class Variant < ActiveRecord::Base
  belongs_to :product
end

class Product < ActiveRecord::Base
  has_many :variants
end

product.variants.create!(name: "Red Notebook")
product.variants.create!(name: "Blue Notebook")
product.variants

#############################################