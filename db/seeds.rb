# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

civil_estados = CivilEstado.create([
  { estado: 'solteiro' },
  { estado: 'casado' },
  { estado: 'viúvo' },
  { estado: 'divorciado' }
])

Uf.create([
  {
    :id : 0,
    :nome : "nenhum",
    :sigla : "NA"
  }
])

Municipio.create([
  {
    :id : 0,
    :nome : "nenhum",
    :uf : 0
  }
])

CrpRegiao.create([
  :id : 0,
  :uf_id : 0
])
