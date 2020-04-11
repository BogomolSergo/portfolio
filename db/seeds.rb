# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 w1 = Work.create(title: 'Codeacademy', image: 'https://d1e2bohyu2u2w9.cloudfront.net/education/sites/default/files/experience-media-file/codecademy-website-screenshot-10.png?width=660&height=415&iframe=1&slide=10&scalePhotos=1', description: 'MOST MOST MOST', language: 'Ruby on Rails', price: 5000)
 w2 = Work.create(title: 'rusrails.ru', image: 'https://habr.com/share/publication/127415/9ba4f291b473338e8bef707b06d5f57e/',  description: 'Командная строка Rails. После прочтения этого руководства, вы узнаете: Как создать приложение на Rails. Как генерировать модели, контроллеры, миграции базы данных и юнит-тесты. Как запустить сервер для разработки. Как экспериментировать с объектами в интерактивной оболочке', language: 'Ruby on Rails', price: 6000)
 w3 = Work.create(title: 'Portfolio', image: 'https://marketplace-cdn.atlassian.com/files/images/acf28506-5760-4007-aeba-f58f3d12e298.png',  description: 'Mu first project.', language: 'Ruby on Rails', price: 1)
#user1 = User.create(first_name: 'Masha', last_name: 'Shurugina', email: 'shlyha@gmail.com', password: '11111111', role: 'editor')
#user1 = User.create(first_name: 'Emperror', last_name: 'admin', email: 'emperroeADM@gmail.com', password: 'Breinkiller1', role: 'admin')