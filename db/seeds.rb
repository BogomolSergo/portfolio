# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
w1 = Work.create(title: 'Codeacademy', description: 'MOST MOST MOST', language: 'Ruby on Rails', price: 5000)
w2 = Work.create(title: 'rusrails.ru', description: 'Командная строка Rails. После прочтения этого руководства, вы узнаете: Как создать приложение на Rails. Как генерировать модели, контроллеры, миграции базы данных и юнит-тесты. Как запустить сервер для разработки. Как экспериментировать с объектами в интерактивной оболочке', language: 'Ruby on Rails', price: 6000)
w3 = Work.create(title: 'Portfolio', description: 'Mu first project.', language: 'Ruby on Rails', price: 1)