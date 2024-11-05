# config/routes.rb
Rails.application.routes.draw do
  root "game#home"       # This sets the root URL to the "home" action in the GameController
  get "/rock" => "game#rock"
  get "/paper" => "game#paper"
  get "/scissors" => "game#scissors"
end

