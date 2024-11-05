# config/routes.rb
Rails.application.routes.draw do
  root "game#home"
  get "/rock" => "game#rock"
  get "/paper" => "game#paper"
  get "/scissors" => "game#scissors"
end

