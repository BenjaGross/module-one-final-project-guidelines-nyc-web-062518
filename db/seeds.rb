attack_modifier = (5..10).to_a
attack_modifier << 0

skeleton = Enemy.create(name: Faker::Witcher.monster, health: 100, attack: attack_modifier.sample)
zombie = Enemy.create(name: Faker::Witcher.monster, health: 100, attack: attack_modifier.sample)
bandit = Enemy.create(name: Faker::Witcher.monster, health: 100, attack: attack_modifier.sample)
thug = Enemy.create(name: Faker::Witcher.monster, health: 100, attack: attack_modifier.sample)
dr_octopus = Enemy.create(name: Faker::Witcher.monster, health: 100, attack: attack_modifier.sample)

