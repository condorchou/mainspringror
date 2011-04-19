authorization do
  role :super_admin do
    has_permission_on [:clients, :videos, :users], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
end
