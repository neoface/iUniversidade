# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Estabelecimento
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with Estabelecimento.
  # enable :sync

  #add model specifc code here
  set :schema_version, '1.0'
  property :id_estabelecimento, :string
  property :estabelecimento, :string
  property :id_distrito, :integer
  property :tipo_ensino, :string
  property :morada, :string
  property :localidade, :string
  property :cod_postal, :string
  property :telefone, :string
  property :fax, :string
  property :email, :string
  property :site, :string
  property :mapa, :string
  property :obs, :string
  property :favorito, :integer

  index :estab_by_id_distrito, [:id_distrito]
  unique_index :estab_by_id_estabelecimento, [:id_estabelecimento]
end
