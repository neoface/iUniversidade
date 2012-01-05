# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Curso
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with Curso.
  # enable :sync

  #add model specifc code here
  set :schema_version, '1.0'
  property :id_estab_curso, :string
  property :id_curso, :string
  property :curso, :string
  property :id_area, :string
  property :id_estabelecimento, :string 
  property :codalternativo, :string
  property :grau, :string
  property :duracao, :integer
  property :ects, :integer
  property :tipo_concurso, :string
  property :vagas, :integer
  property :prova_ingresso_desc, :string
  property :class_min_desc, :string
  property :formula_calculo_desc, :string
  property :favorito, :integer
  
  unique_index :curso_by_id_estab_curso, [:id_estab_curso]
end

class V_curso
  include Rhom::PropertyBag
end
