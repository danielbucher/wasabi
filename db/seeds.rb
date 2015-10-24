# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

positions = ['Empresário/Executivo', 'Gestor de Vendas',
              'Gestor de Marketing', 'Vendedor Interno',
              'Vendedor Externo', 'Consultor Empresarial',
              'Secretária(o)/Assistente', 'Estagiária(o)']

positions.each do |name|
  Position.create(name: name)
end

tools = ['Panilha Excel', 'Agendor', 'Pipedrive', 'Salesforce',
          'Não uso nenhuma ferramenta']

tools.each do |name|
  Tool.create(name: name)
end
