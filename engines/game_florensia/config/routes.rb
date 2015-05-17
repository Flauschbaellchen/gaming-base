Florensia::Engine.routes.draw do
  scope ":locale/g/florensia" do

    resources :quests, :items, :npcs, only: [:index, :show]

    root to: 'news#index'
  end
end
