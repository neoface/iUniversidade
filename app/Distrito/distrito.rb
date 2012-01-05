# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Distrito
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with Distrito.
  # enable :sync

  #add model specifc code here
  
  set :schema_version, '1.0'
  property :id_distrito, :string
  property :distrito, :string
  property :favorito, :integer

  unique_index :distrito_by_id_distrito, [:id_distrito]
end
