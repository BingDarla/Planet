# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.destroy_all
c1 =Country.create(:name => 'China',:population => '1403500365',:language =>'Mandarin,Cantonese', :code =>'CN')
c2 =Country.create(:name => 'Japan',:population => '127366304',:language =>'Japanese', :code =>'JP')
c3 =Country.create(:name => 'Australia',:population => '24746932',:language =>'English', :code =>'AU')
c4 =Country.create(:name => 'Brazil',:population => '209909159',:language =>'Portuguese', :code =>'BR')

User.destroy_all
u1 = User.create(:name =>'Bob', :dob =>20000406, :email => 'bo@ga.co', :password => 'chicken',:admin => true)
u2 = User.create(:name =>'Thomas', :dob =>19961123, :email => 'ts@ga.co',:password =>'chicken')
u3 = User.create(:name =>'William', :dob =>19990612, :email => 'wm@ga.co', :password => 'chicken')


Sight.destroy_all
s1 = Sight.create(:name =>'Mount Fuji',:location =>'Tokyo',:image =>'https://www.hdwallpapers.in/walls/mount_fuji_japan_highest_mountain-wide.jpg',:info =>"Mount Fuji, located on Japan's main island is the countries tallest mountain standing at 3,776 meters (12,389 ft). Still an active volcano, Mt. Fuji has erupted several times with the last recorded eruption taking place in 1707. Along with Mt. Tate and Mt. Haku, Fujisan is one of the three holiest mountains in Japan.", :category =>'Natural',:latitude =>'35.3606° N',:longtitude =>'138.7278° E')
s2 = Sight.create(:name =>'Opera House',:location =>'Sydney',:image =>'https://upload.wikimedia.org/wikipedia/commons/7/7c/Sydney_Opera_House_-_Dec_2008.jpg',:info =>'The Sydney Opera House is one of the most distinctive and famous 20th-century buildings, and one of the most famous performing arts venues in the world', :category =>'Cultural',:latitude =>'33.8568° S',:longtitude =>'151.2153° E')
s3 = Sight.create(:name =>'Summer Palace',:location =>'Beijing',:image =>'http://static.panoramio.com/photos/large/14059650.jpg',:info =>'The Summer Palace was initially built in 1750 by Emperor Qianglong. The architectural style of Summer Palace is to make others believe it is inartificial. It covers an area of 70 thousand square meters and holds over 3000 houses. In 1860 and 1900 it was destroyed by invaders and in 1912 it was rebuilt by the Government of Qing Dynasty. In 1924, it began to be open to tourists', :category =>'Cultural,Historical',:latitude =>'40.0000° N',:longtitude =>'116.2755° E')
s4 = Sight.create(:name =>'Iguazu Fall',:location =>'Foz do Iguaçu',:image =>'http://www.argentina.travel/pics/1600x686/9abc194b56.jpg',:info =>'The exquisite Iguazu Falls are also known as the Iguassu Falls and the Iguaçu Falls. The magnificent spectacle of these 275 individual drops has awed tourists, locals and indigenous inhabitants for centuries. They originate from the Iguazu River and are located on the border of Brazil (in the state of Paraná) and Argentina.', :category =>'Naturalx',:latitude =>'25.6953° S',:longtitude =>'54.4367° W')
s5 = Sight.create(:name =>'Kinkaku-ji',:location =>'kyoto',:image =>'https://cdn2.foap.com/images/1353844d-44f5-4eeb-853b-5a3764515b4a/w1920.jpg?1473206601',:info =>"Kinkakuji (金閣寺, Golden Pavilion) is a Zen temple in northern Kyoto whose top two floors are completely covered in gold leaf. Formally known as Rokuonji, the temple was the retirement villa of the shogun Ashikaga Yoshimitsu, and according to his will it became a Zen temple of the Rinzai sect after his death in 1408. Kinkakuji was the inspiration for the similarly named Ginkakuji (Silver Pavilion), built by Yoshimitsu's grandson, Ashikaga Yoshimasa, on the other side of the city a few decades later.", :category =>'Cultural,Historical',:latitude =>'35.0394° N',:longtitude =>'135.7292° E')
s6 = Sight.create(:name =>'Terracotta Army',:location =>"Xi'an",:image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Terracotta_Army_Pit_1_1.jpg/1200px-Terracotta_Army_Pit_1_1.jpg',:info =>'The Terracotta Army in Xian, aka Terracotta Warriors and Horses, is a super large collection of life-size terra cotta sculptures in battle formations, reproducing the mega imperial guard troops of Emperor Qin Shi Huang (259 - 210BC), the first emperor of the first unified dynasty of Imperial China.', :category =>'Cultural,Historical',:latitude =>'34.3841° N',:longtitude =>'109.2785°')

Triplist.destroy_all
t1 = Triplist.create(:name =>'Mars')
t2 = Triplist.create(:name =>'Moon')
t3 = Triplist.create(:name =>'Sun')
t4 = Triplist.create(:name =>'Venus')

Comment.destroy_all
cm1 = Comment.create(:content => "That's great!")
cm2 = Comment.create(:content => "The biggest water fall I ever saw. ")
cm3 = Comment.create(:content => "I almost died..when reached the top")
cm4 = Comment.create(:content => "That's amazing!")


c1.sights << s3
c1.sights << s6
c2.sights << s1
c2.sights << s5
c3.sights << s2
c4.sights << s4

u1.triplists << t1
u1.triplists << t4
u2.triplists  << t2
u3.triplists << t3

t1.sights << s1 << s4 << s6
t2.sights << s1 << s5
t3.sights << s3 << s4 << s5
t4.sights << s2 << s3 << s6

u1.comments << cm1
u2.comments << cm2 << cm3
u3.comments << cm4

s4.comments << cm2
s1.comments << cm3
s6.comments << cm1
s2.comments << cm4
