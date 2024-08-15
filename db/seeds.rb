# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."

User.destroy_all

puts "Creating users..."

admin = User.new(
  email: "admin@admin.com",
  password: "superadmin",
  first_name: "Super",
  last_name: "Admin",
  birthday: Date.new(1990, 1, 1)
)
admin.save!


puts "Creating vehicules..."

Vehicule.create!([
  {
    address: "123 Rue Principale, Paris",
    category: "voiture",
    brand: "Toyota",
    model: "Corolla",
    energy: "essence",
    capacity: 5,
    color: "Noir",
    year: 2020,
    license_plate: "AB-123-CD",
    price_per_h: 20,
    price_per_d: 120,
    description: "Une berline fiable et économique, parfaite pour les trajets quotidiens en ville ou les escapades du week-end.",
    user_id: admin.id
  },
  {
    address: "456 Rue de la Liberté, Lyon",
    category: "deux-roue",
    brand: "Yamaha",
    model: "MT-07",
    energy: "essence",
    capacity: 2,
    color: "Bleu",
    year: 2019,
    license_plate: "EF-456-GH",
    price_per_h: 15,
    price_per_d: 90,
    description: "Une moto dynamique avec un excellent rapport qualité-prix, idéale pour les amateurs de sensations fortes.",
    user_id: admin.id
  },
  {
    address: "789 Avenue de la République, Marseille",
    category: "poids-lourd",
    brand: "Renault",
    model: "Magnum",
    energy: "diesel",
    capacity: 3,
    color: "Rouge",
    year: 2017,
    license_plate: "IJ-789-KL",
    price_per_h: 25,
    price_per_d: 150,
    description: "Un poids-lourd robuste pour le transport longue distance, offrant confort et fiabilité sur la route.",
    user_id: admin.id
  },
  {
    address: "101 Boulevard des Capucines, Toulouse",
    category: "voiture",
    brand: "Tesla",
    model: "Model S",
    energy: "electrique",
    capacity: 5,
    color: "Blanc",
    year: 2021,
    license_plate: "MN-101-OP",
    price_per_h: 30,
    price_per_d: 200,
    description: "Une voiture électrique haut de gamme, alliant performance et écologie pour une expérience de conduite inégalée.",
    user_id: admin.id
  },
  {
    address: "202 Rue de la Gare, Nice",
    category: "deux-roue",
    brand: "BMW",
    model: "R1200GS",
    energy: "essence",
    capacity: 2,
    color: "Gris",
    year: 2018,
    license_plate: "QR-202-ST",
    price_per_h: 20,
    price_per_d: 130,
    description: "Une moto d'aventure idéale pour les longues routes, offrant confort et puissance sur tous les terrains.",
    user_id: admin.id
  },
  {
    address: "303 Place de la Comédie, Bordeaux",
    category: "voiture",
    brand: "Peugeot",
    model: "208",
    energy: "gpl",
    capacity: 5,
    color: "Vert",
    year: 2019,
    license_plate: "UV-303-WX",
    price_per_h: 18,
    price_per_d: 110,
    description: "Une citadine pratique et économique, parfaite pour les déplacements urbains avec une empreinte carbone réduite.",
    user_id: admin.id
  },
  {
    address: "404 Allée des Pins, Lille",
    category: "poids-lourd",
    brand: "Mercedes",
    model: "Actros",
    energy: "diesel",
    capacity: 3,
    color: "Noir",
    year: 2020,
    license_plate: "YZ-404-AB",
    price_per_h: 27,
    price_per_d: 160,
    description: "Un camion moderne et puissant, conçu pour les missions de transport les plus exigeantes.",
    user_id: admin.id
  },
  {
    address: "505 Quai des Chartrons, Strasbourg",
    category: "deux-roue",
    brand: "Ducati",
    model: "Monster",
    energy: "essence",
    capacity: 2,
    color: "Rouge",
    year: 2020,
    license_plate: "CD-505-EF",
    price_per_h: 22,
    price_per_d: 140,
    description: "Une moto sportive au design agressif, offrant une expérience de conduite incomparable pour les passionnés.",
    user_id: admin.id
  },
  {
    address: "606 Rue du Faubourg, Nantes",
    category: "voiture",
    brand: "Renault",
    model: "Clio",
    energy: "hybrid",
    capacity: 5,
    color: "Bleu",
    year: 2021,
    license_plate: "GH-606-IJ",
    price_per_h: 16,
    price_per_d: 100,
    description: "Une compacte hybride polyvalente, idéale pour la ville avec une consommation réduite et une conduite agréable.",
    user_id: admin.id
  },
  {
    address: "707 Rue Saint-Honoré, Grenoble",
    category: "poids-lourd",
    brand: "Volvo",
    model: "FH16",
    energy: "diesel",
    capacity: 3,
    color: "Blanc",
    year: 2018,
    license_plate: "KL-707-MN",
    price_per_h: 28,
    price_per_d: 170,
    description: "Un camion robuste et fiable, parfait pour le transport de marchandises lourdes sur de longues distances.",
    user_id: admin.id
  }
])
