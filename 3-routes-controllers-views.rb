# config/routes.rb

get "/about" => "static_pages#about"

############################################

# controller
# app/controllers/static_pages_controller.rb

class StaticPagesController < ApplicationController
  def about
  end
end

############################################

# view
# app/views/static_pages/about.html.erb

<h1>
  About us
</h2>

<p>
  We are awesome!
</p>

############################################

# passing values to view

def about
  @adjective = "awesome"
end

<p>
  We are <%= @adjective %>
</p>

############################################

# ERB

# evaluate and substitute output
<%= 2 + 2 %>

# just evaluate
<% 2 + 2 %>

# if

<% if @.adjective == "awesome" %>
  <p>Print something</p>
<% else %>
  <p>Print something else</p>
<% end %>

# loop

<% [1, 2, 3, 4].each do |number| %>
  Hello <%= number %>!
<% end %>

############################################

# dynamic segments in URL

get "/about/:topic" => "static_pages#about"

class StaticPagesController < ApplicationController
  def about
    if params[:topic] == "team"
      # [...]
    else
      # [...]
    end
  end
end

