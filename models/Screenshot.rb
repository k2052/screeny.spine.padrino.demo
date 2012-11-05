class Screenshot
  include MongoMapper::Document
  include MongoMapper::Plugins::ActsAsList

  ##
  # Scopes
  #
  scope :by_position, sort(:position.asc)

  ##
  # Keys
  #
  key :image, String

  ##
  # Key Settings
  #
  timestamps!
  acts_as_list

  # Don't allow setting of ID. Forces use of MongaMapper IDs. Otherwise Spine will overwrite the IDs.
  # Since many MongoMapper plugins expect ObjectIds as IDs it's best to not allow them to overwrite things.
  def id=(id)
  end
end
