Rails.application.routes.draw do
  root to: 'flats#index'
  # verb '/path', to: 'controller#action', as: :prefix
  # this places id inside of the params as a key
  get 'flats/:id', to: 'flats#show', as: :flat
end

# index -> listing all flats
# show -> listing ONE flat
