# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Member.create(
  :name => "管理者" ,
  :email => "kanrisuru@gmail.com" ,
  :gender => 0 ,
  :administrator => true ,
  :passname => "Administrator" ,
  :password => "kj7767" ,
  :tasktype => 3 ,
  :gametype => 3 ,
  :membertype => 0
)