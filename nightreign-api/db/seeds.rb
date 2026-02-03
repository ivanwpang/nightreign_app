# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Nightfarer.create!([
  { name: "Wylder", dlc: false, unlockable: false },
  { name: "Guardian", dlc: false, unlockable: false },
  { name: "Ironeye", dlc: false, unlockable: false },
  { name: "Duchess", dlc: false, unlockable: true },
  { name: "Raider", dlc: false, unlockable: false },
  { name: "Revenant", dlc: false, unlockable: true },
  { name: "Recluse", dlc: false, unlockable: false },
  { name: "Executor", dlc: false, unlockable: false },
  { name: "Scholar", dlc: true, unlockable: false },
  { name: "Undertaker", dlc: true, unlockable: false }
])

NightLord.create!([
  { name: "Gladius", expedition: "Tricephalos", dlc: false },
  { name: "Adel", expedition: "Gaping Jaw", dlc: false },
  { name: "Gnoster", expedition: "Sentient Pest", dlc: false },
  { name: "Maris", expedition: "Augur", dlc: false },
  { name: "Libra", expedition: "Equilibrious Beast", dlc: false },
  { name: "Fulghor", expedition: "Darkdrift Knight", dlc: false },
  { name: "Caligo", expedition: "Fissure in the Fog", dlc: false },
  { name: "Heolstor", expedition: "Night Aspect", dlc: false },
  { name: "Harmonia", expedition: "Balancers", dlc: true },
  { name: "Straghess", expedition: "Dreglord", dlc: true }
])