# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

Commune.destroy_all



# COMUNAS
Commune.create([{name:'Santiago'},{name:'La Dehesa'},{name:'La Florida'}])


User.create(role:'Distribuidor',name:'Miguel1',phone:'67448086',address:'San Francisco 1043',commune: Commune.find_by_name('Santiago'),code:'admin',email:'miguel1.servimarket@gmail.com',password:'m12345a')

User.create(role:'Proveedor',name:'Miguel2',phone:'67448086',address:'San Francisco 1043',commune: Commune.find_by_name('Santiago'),code:'Timbre',email:'miguel2.servimarket@gmail.com',password:'m12345a')

User.create(role:'Administrador',name:'Miguel3',phone:'67448086',address:'San Francisco 1043',commune: Commune.find_by_name('Santiago'),code:'LV',email:'miguel3.servimarket@gmail.com',password:'m12345a')

User.create(role:'Cliente',name:'Miguel4',phone:'67448086',address:'San Francisco 1043',commune_id: Commune.find_by_name('Santiago'),code:'cliente',email:'miguel4.servimarket@gmail.com',password:'m12345a')


