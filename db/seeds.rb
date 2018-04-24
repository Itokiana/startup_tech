# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# On fait une boucle a 10
10.times do
    # On creer un user
    user = User.create(name: Faker::Name.unique.name)
    # On cree un article
    article = Article.create(name: Faker::Name.unique.name, body: Faker::Lorem.sentence(2), description: Faker::Lorem.sentence(4))
    # Chaque utiliseurs peut créer plusieurs articles mais chaque articles est crée par un user
    article.user = user
    # On sauvegarde
    user.save
    article.save
end
