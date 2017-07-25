Rails.application.routes.draw do
  root 'assessment#home'
  get  '/example',   to: 'assessment#example'
  get  '/formpage',  to: 'assessment#formpage'
  get  '/result',    to: 'assessment#result'
end
