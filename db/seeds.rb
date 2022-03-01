Role.destroy_all
Audition.destroy_all


15.times { 
    Role.create(character_name: Faker::Movies::HowToTrainYourDragon.character)
 }

 30.times {
     Audition.create(actor: Faker::Name.name,
                    location: ["NY","SF","DENVER","Seattle"].sample,
                    phone: Faker::PhoneNumber.phone_number,
                    hired: [true, false].sample,
                    # role_id: Role.all.sample.id
                    role_id: Role.pluck(:id).sample
    
    
    )
 }