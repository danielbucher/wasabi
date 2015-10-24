# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

positions = ['Empresário(a)/Executivo(a)', 'Gestor(a) de Vendas',
              'Gestor(a) de Marketing', 'Vendedor(a) Interno',
              'Vendedor(a) Externo', 'Consultor(a) Empresarial',
              'Secretário(a)/Assistente', 'Estagiário(a)']

positions.each do |name|
  Position.create(name: name)
end
