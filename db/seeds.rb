User.create(name: "Nguyen Van Giap", email: "alulu@atnextmail.com", password: "Aa123456", password_confirmation: "Aa123456", activated:true)
#create sportgroundtype
Sportgroundtype.create(name:"Football")
Sportgroundtype.create(name:"Volleyball")
Sportgroundtype.create(name:"Badminton")
Sportgroundtype.create(name:"Tennis")
#create pitches types
Pitchtype.create(name: "5 Persons", sportgroundtype_id: "1")
Pitchtype.create(name: "7 Persons", sportgroundtype_id: "1")
Pitchtype.create(name: "9 Persons", sportgroundtype_id: "1")
Pitchtype.create(name: "11 Persons", sportgroundtype_id: "1")
Pitchtype.create(name: "Normal pitch", sportgroundtype_id: "2")
Pitchtype.create(name: "VIP pitch", sportgroundtype_id: "2")
Pitchtype.create(name: "Normal pitch", sportgroundtype_id: "3")
Pitchtype.create(name: "VIP pitch", sportgroundtype_id: "3")
Pitchtype.create(name: "Normal pitch", sportgroundtype_id: "4")
Pitchtype.create(name: "VIP pitch", sportgroundtype_id: "4")
#create status
Status.create name: "Pending"
Status.create name: "Accepted"
Status.create name: "Done"
Status.create name: "Canceled"
