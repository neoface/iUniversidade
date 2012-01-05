# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class CursoProva
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with CursoProva.
  # enable :sync

  #add model specifc code here
  set :schema_version, '1.0'
  property :id_estab_curso, :string
  property :grupo_prova, :integer
  property :id_prova_ing, :string
  
  unique_index :cursoprova_by_id_estab_curso, [:id_estab_curso]
end
