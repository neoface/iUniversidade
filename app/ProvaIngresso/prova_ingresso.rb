# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class ProvaIngresso
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with ProvaIngresso.
  # enable :sync

  #add model specifc code here
  set :schema_version, '1.0'
  property :id_prova_ing, :string
  property :prova_ingresso, :string
  property :descricao, :string
  
  unique_index :provaing_by_id_prova_ing, [:id_prova_ing]
end
