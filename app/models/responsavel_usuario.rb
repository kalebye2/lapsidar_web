class ResponsavelUsuario < ApplicationRecord
  has_many :usuarios, foreign_key: 'usuario_id'
  has_many :usuarios, foreign_key: 'responsavel_id'
  belongs_to :parentesco
end
