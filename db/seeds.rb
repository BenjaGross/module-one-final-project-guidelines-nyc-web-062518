attack_modifier = (10..15).to_a
#attack_modifier << 0

skeleton = Enemy.create(name: Faker::Witcher.monster, health: 100, attack: attack_modifier.sample)
zombie = Enemy.create(name: Faker::Witcher.monster, health: 100, attack: attack_modifier.sample)
bandit = Enemy.create(name: Faker::Witcher.monster, health: 100, attack: attack_modifier.sample)
thug = Enemy.create(name: Faker::Witcher.monster, health: 100, attack: attack_modifier.sample)
dr_octopus = Enemy.create(name: Faker::Witcher.monster, health: 100, attack: attack_modifier.sample)

aragorn = Player.create(name: "Aragorn, Chieftan of the Dunedain King of the Reunited Kingdom of Gondor", race: "Dunedain", attack: 18, health: 250)
gandalf_grey = Player.create(name: "Gandalf the Grey", race: "Maia", attack: 13, health: 100)
gandalf_white = Player.create(name: "Gandalf the White", race: "Maia", attack: 16, health: 140)
legolas = Player.create(name: "Legolas", race: "Sindar", attack: 8, health: 150)
