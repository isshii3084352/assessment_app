Rails.application.routes.draw do
  root 'assessment#home'
  get  '/example',   to: 'assessment#example'
  get  '/formpage',  to: 'assessment#formpage'
  post '/formpage',  to: 'assessment#sendinfo'
  get  '/result',    to: 'assessment#result'
end
