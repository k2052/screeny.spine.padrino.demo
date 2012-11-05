class Screeny < Padrino::Application
  register Padrino::Rendering
  register Padrino::Helpers
  register Padrino::Flash
  register CompassInitializer 
  register Padrino::AssetHelpers
  register Padrino::Sprockets   
  register Padrino::Responders  
  register Padrino::Contrib::Helpers::JQuery
  register Filepicker::Padrino
  set :filepicker_padrino_api_key, ENV['FILEPICKER_API_KEY']

  ## 
  # Assets
  #
  set :stylesheets_folder, :css
  set :javascripts_folder, :js

  assets do    
    digest false  
    handle_stylesheets false  
    assets_folder '/public'
    append_path 'assets/js'     
    append_path '../vendor/assets/js' 
  end
end
