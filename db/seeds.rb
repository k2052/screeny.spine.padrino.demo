require 'ffaker' 
require 'factory_girl'

FactoryGirl.definition_file_paths = [
  File.join(Padrino.root, 'test', 'factories')
]
FactoryGirl.find_definitions

# Add some test screenshots
unless Padrino.env == :production
  FactoryGirl.create_list(:screenshot, 4)
end