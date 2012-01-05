# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class StatCandidatura
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with StatCandidatura.
  # enable :sync

  #add model specifc code here
  set :schema_version, '1.0'
  property :id_estab_curso, :string
  property :ano_lectivo, :integer
  property :fase, :integer
  property :vagas, :integer
  property :candidatos_m, :integer
  property :candidatos_f, :integer
  property :candidatos_1_opcao, :integer
  property :colocados_m, :integer
  property :colocados_f, :integer
  property :colocados_1_opcao, :integer
  property :media_nota_cand, :float
  property :media_prova_ingresso, :float
  property :media_nota_12, :float
  property :media_nota_11, :float
  property :nota_ultimo_colocado, :float
  property :novo_reformulado_flag, :string

end
