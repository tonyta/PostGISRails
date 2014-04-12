# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ActiveRecord::Base.connection.execute("insert into points (name, latitude, longitude) (select 'Cafe ' || i as name, 39 + x.lat as latitude, -76 - x.lon as longitude from (select i, random() * 10 as lat, random() * 10 as lon from generate_series(1,1000000) as i) as x );")
