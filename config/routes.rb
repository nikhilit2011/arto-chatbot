Rails.application.routes.draw do
  root "chatbot#index"
  post "/chatbot/respond", to: "chatbot#respond"
  post "/chatbot/seed", to: "chatbot#seed"
end