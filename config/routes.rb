WildlifeTracker::Application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})

  match('sightings', {:via => :post, :to => 'sightings#create'})
  match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})
end


# ToDo::Application.routes.draw do
#   match('/', {:via => :get, :to => "lists#index"})
#   match('lists', {:via => :get, :to => "lists#index"})
#   match('lists', {:via => :post ,:to => "lists#create"})
#   match('lists', {:via => :get ,:to => "lists#new"})
#   match('lists/:id', {:via => :get, :to => "lists#show"})
#   match('lists/:id/edit', {:via => :get, :to => "lists#edit"})
#   match('lists/:id', {:via => [:patch, :put], :to => "lists#update"})
#   match('lists/:id', {:via => :delete, :to => "lists#destroy"})

#   match('lists', {:via => :get, :to => "tasks#index"})
#   match('lists/:list_id/tasks', {:via => :get, :to => "tasks#new"})
  # match('lists/:list_id/tasks', {:via => :post ,:to => "tasks#create"})
#   match('lists/:id', {:via => :get, :to => "tasks#show"})
#   match('tasks/:id/edit', {:via => :get, :to => "tasks#edit"})
#   match('tasks/:id', {:via => [:patch, :put], :to => "tasks#update"})
#   match('tasks/:id', {:via => :delete, :to => "tasks#destroy"})


# end
