puts "🌱 Seeding spices..."

c1 = Client.create(name: "Sam",phone: '(888)888-8888')
c2 = Client.create(name: "Kenny",phone: '(777)777-7777')

Job.create(name:"split heat-pump",desciption:"201 merry lane",phone: '(666)666-6666',client_id: c1.id)
Job.create(name:"duct job",desciption:"202 merry lane",phone: '(777)777-7777',client_id: c2.id)
Job.create(name:"split gas",desciption:"203 merry lane",phone: '(999)999-9999',client_id: c1.id)

puts "✅ Done seeding!"
