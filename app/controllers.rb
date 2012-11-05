Screeny.controllers :main do 
  get :index, :map => '/' do
    render 'main/index'
  end
end

Screeny.controllers :screenshots do
  before(:update) do
    @screenshot = Screenshot.find_by_id(params[:id])
    not_found unless @screenshot
  end

  before(:create, :update) do
    params[:screenshot] = MultiJson.load(request.body.read) unless params[:screenshot]
  end

  get :new, :map => '/screenshots/new' do
    @screenshot = Screenshot.new
    render 'screenshots/new'
  end

  post :create, :map => '/screenshots' do
    @screenshot = Screenshot.create(params[:screenshot])
    respond(@screenshot, url(:screenshots, :index))
  end

  get :index, :map => '/screenshots' do
    @screenshots = Screenshot.by_position().all
    respond(@screenshots)
  end

  put :update, :map => '/screenshots/:id' do
    @screenshot.insert_at(params[:screenshot].delete('position')) if params[:screenshot].include?('position')
    @screenshot.update_attributes!(params[:screenshot])
    respond(@screenshot)
  end
end
