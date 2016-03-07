# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Patient.delete_all
Physician.delete_all
Practice.delete_all
Address.delete_all

Address.create!(:id => 1, :name => 'Address1')
Address.create!(:id => 2, :name => 'Address2')
Address.create!(:id => 3, :name => 'Address3')
Address.create!(:id => 4, :name => 'Address4')
Address.create!(:id => 5, :name => 'Address5')
Address.create!(:id => 6, :name => 'Address6')
Address.create!(:id => 7, :name => 'Address7')

Patient.create!(:id => 1, :name => 'Patient1', :address_id => 1)
Patient.create!(:id => 2, :name => 'Patient2', :address_id => 2)
Patient.create!(:id => 3, :name => 'Patient3', :address_id => 3)
Patient.create!(:id => 4, :name => 'Patient4')
Patient.create!(:id => 5, :name => 'Patient5')
Patient.create!(:id => 6, :name => 'Patient6', :address_id => 4)
Patient.create!(:id => 7, :name => 'Patient7')

Physician.create!(:id => 1, :name => 'Physician1', :address_id => 1)
Physician.create!(:id => 2, :name => 'Physician2', :address_id => 2)
Physician.create!(:id => 3, :name => 'Physician3', :address_id => 3)
Physician.create!(:id => 4, :name => 'Physician4', :address_id => 4)
Physician.create!(:id => 5, :name => 'Physician5', :address_id => 5)
Physician.create!(:id => 6, :name => 'Physician6', :address_id => 6)
Physician.create!(:id => 7, :name => 'Physician7', :address_id => 7)

Practice.create!(:id => 1, :name => 'Practice1', :address_id => 1)
Practice.create!(:id => 2, :name => 'Practice2', :address_id => 2)
Practice.create!(:id => 3, :name => 'Practice3', :address_id => 3)
Practice.create!(:id => 4, :name => 'Practice4', :address_id => 4)
Practice.create!(:id => 5, :name => 'Practice5', :address_id => 5)
Practice.create!(:id => 6, :name => 'Practice6')
Practice.create!(:id => 7, :name => 'Practice7', :address_id => 7)