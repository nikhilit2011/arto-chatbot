Rails.application.routes.draw do
  root "chatbot#index"
  post "/chatbot/respond", to: "chatbot#respond"
end