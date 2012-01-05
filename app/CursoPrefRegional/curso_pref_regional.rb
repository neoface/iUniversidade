# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class CursoPrefRegional
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with CursoPrefRegional.
  # enable :sync

  #add model specifc code here
  set :schema_version, '1.0'
  property :id_estab_curso, :string
  property :id_distrito, :string
  property :percentagem, :integer
  
  unique_index :cursoprefreg_by_id_estab_curso, [:id_estab_curso]

end
