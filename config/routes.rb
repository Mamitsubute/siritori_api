Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      root 'words#index'
    end
  end
end