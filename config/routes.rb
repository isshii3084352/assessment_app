Rails.application.routes.draw do
  root 'assessment#home'
#  get 'assessment/home'
  get '/example',  to: 'assessment#example'
end
