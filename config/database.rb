MongoMapper.connection = Mongo::Connection.new('localhost', nil, :logger => logger)

case Padrino.env
  when :development then MongoMapper.database = 'filepicker_padrino_screeny_development'
  when :production  then MongoMapper.database = 'filepicker_padrino_screeny_production'
  when :test        then MongoMapper.database = 'filepicker_padrino_screeny_test'
end
