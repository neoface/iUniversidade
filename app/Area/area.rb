# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Area
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with Area.
  # enable :sync

  #add model specifc code here
  set :schema_version, '1.0'
  property :id_area, :string
  property :area, :string
  property :descricao, :string
  
  unique_index :area_by_id_area, [:id_area]

end
