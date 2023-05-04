# Création d'une ville
city = City.create(name: "Paris")

# Création de deux docteurs
doctor1 = Doctor.create(first_name: "John", last_name: "Doe", zip_code: "12345", city: city)
doctor2 = Doctor.create(first_name: "Jane", last_name: "Smith", zip_code: "67890", city: city)

# Création de deux patients
patient1 = Patient.create(first_name: "Alice", last_name: "Doe", city_id:1)
patient2 = Patient.create(first_name: "Bob", last_name: "Smith",city_id:1)

# Création de deux spécialités
speciality1 = Speciality.create(name: "Cardiologie")
speciality2 = Speciality.create(name: "Dermatologie")

# Association des spécialités aux docteurs
doctor1.specialities << speciality1
doctor2.specialities << speciality2

# Création de deux rendez-vous
appointment1 = Appointment.create(date: DateTime.now, doctor: doctor1, patient: patient1, city: city)
appointment2 = Appointment.create(date: DateTime.now, doctor: doctor2, patient: patient2, city: city)