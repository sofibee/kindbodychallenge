# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

patients = Patient.create([{first_name: 'Jeff', last_name: 'Winger', dob: '11/20/1971'},
                          {first_name: 'Abed', last_name: 'Nadir', dob: '03/10/1979'},
                          {first_name: 'Britta', last_name: 'Perry', dob: '10/19/1982'},
                          {first_name: 'Troy', last_name: 'Barnes', dob: '09/25/1983'},
                          {first_name: 'Annie', last_name: 'Edison', dob: '12/29/1982'},
                          {first_name: 'Shirley', last_name: 'Bennett', dob: '08/12/1971'} ])

Note.create(text: 'Appears to have a cold', patient_id: 1)
