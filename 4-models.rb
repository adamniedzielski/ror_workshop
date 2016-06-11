rails generate model Article title:string content:text published_at:datetime
- string
- text
- datetime
- date
- boolean
- integer
- float
- decimal

rake db:migrate

############################################

# app/models/article.rb

class Article < ActiveRecord::Base
end

############################################

rails console

Article.count
Article.create!(
  title: "State of modern JavaScript tooling",
  content: "We are doomed",
  published_at: 3.days.ago
)
Article.all
article = Article.first
article.title = "OMG"
article.save!
Article.find(1)
Article.where(title: "OMG")

############################################

# config/routes.rb

resources :articles
GET /articles => ArticlesController#index
GET /articles/:id => ArticlesController#show
GET /articles/new => ArticlesController#new
POST /articles => ArticlesController#create
GET /articles/:id/edit => ArticlesController#edit
PATCH /articles/:id => ArticlesController#update
DELETE /articles/:id => ArticlesController#destroy
