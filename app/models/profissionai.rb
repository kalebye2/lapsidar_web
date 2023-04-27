class Profissionai < ApplicationRecord
  belongs_to :civil_estado
  belongs_to :instrucao_grau
  belongs_to :funcao
  belongs_to :municipio
end
