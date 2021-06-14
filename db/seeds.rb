# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

A1 = Apartment.create(number:4109)
A2 = Apartment.create(number:1107)
A3 = Apartment.create(number:2409)
A4 = Apartment.create(number:1110)
A5 = Apartment.create(number:7103)

T1 = Tenant.create(name:"Robbin Miller", age:29)
T2 = Tenant.create(name:"Justin Cobb", age:37)
T3 = Tenant.create(name:"Chris Hitt", age:19)
T4 = Tenant.create(name:"Rehna Scwhatsky", age:35)
T5 = Tenant.create(name:"Timber Care", age:40)
T6 = Tenant.create(name:"Jen Scott", age:21)
T7 = Tenant.create(name:"Bobbie Harry", age:29)
T8 = Tenant.create(name:"Reha bronsky", age:29)

Lease.create(apartment_id: A1.id, tenant_id: T1.id, rent: 1200)
Lease.create(apartment_id: A2.id, tenant_id: T2.id, rent: 2200)
Lease.create(apartment_id: A3.id, tenant_id: T3.id, rent: 1000)
Lease.create(apartment_id: A4.id, tenant_id: T4.id, rent: 3200)
Lease.create(apartment_id: A5.id, tenant_id: T5.id, rent: 4200)
Lease.create(apartment_id: A3.id, tenant_id: T4.id, rent: 5020)
Lease.create(apartment_id: A4.id, tenant_id: T1.id, rent: 1100)
