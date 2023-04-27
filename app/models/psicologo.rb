class Psicologo < ApplicationRecord
  belongs_to :civil_estado
  belongs_to :crp_regiao
  belongs_to :municipio
end
