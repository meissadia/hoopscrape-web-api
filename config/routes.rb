Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/v1/boxscore/:id'   => 'v1#boxscore'
  get '/v1/player/:id'     => 'v1#player'
  get '/v1/schedule/:id'   => 'v1#schedule'
  get '/v1/roster/:id'     => 'v1#roster'
  get '/v1/teams'          => 'v1#teams'
end
