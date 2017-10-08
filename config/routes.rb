Rails.application.routes.draw do
  get '/pages' => 'pages#index' # Home page DONE

  get '/walls' => 'walls#index' # My Walls page 
  get '/projects/new' => 'projects#new' # New Project page
  post '/projects' => 'projects#create' # Success new project created.
  get '/projects/:id' => 'projects#show' # My Projects page
  get '/projects/:id/edit' => 'projects#edit' # Edit a Project
  patch '/projects/:id' => 'projects#update' # Success update project
  delete '/projects/:id' => 'projects#destroy' # Delete project

  post '/color_projects/:id' => 'projects#create'

  # get '/users' => 'users#index' # Profile page DONE
  get '/signup' => 'users#new' # New users signup page DONE
  post '/users' => 'users#create' # Success signup DONE
  get '/users/:id' => 'users#show' # Other user's page 
  get '/users/:id/edit' => 'users#edit' # Profile page DONE
  patch '/users/:id' => 'users#update' # Edit profile DONE
  # get '/users/:id' => 'users#destroy' # Delete profile 

  get '/login' => 'sessions#new' # Login page DONE
  post '/login' => 'sessions#create' # Success log in DONE
  get '/logout' => 'sessions#destroy' # Logout DONE

  get '/quizzes' => 'quizzes#index' # What Color Are You cover page
  get '/quizzes/new' => 'quizzes#new' # What Color Are You form page
  post '/quizzes' => 'quizzes#create' # Success color generated.
  get '/results' => 'quizzes#result' # Quiz form result

  get '/matches' => 'matches#index' # Color Matches Your Projects cover page
  get '/matches/new' => 'matches#new' # Color Matches Your Projects form page
  get '/matches' => 'matches#create' # Success card generated.

  get '/colors' => 'colors#index' # Index of all colors

  # get '/colors/:id' => 'colors#show' # Show a single color
  post '/cards' => 'cards#create' # Show a single card
  get '/cards/:id/edit' => 'cards#edit'
  patch '/cards/:id' => 'cards#update'
  delete '/cards/:id' => 'cards#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
