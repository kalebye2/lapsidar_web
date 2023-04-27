class Usuario < ApplicationRecord
  belongs_to :estado_civil
  belongs_to :instrucao_grau
  belongs_to :municipio
end
