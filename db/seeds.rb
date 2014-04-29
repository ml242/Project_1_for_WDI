# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# FIXME remove hard coded ids and associate using activerecord relationships. c1.ascends << a1

Crag.delete_all
Ascend.delete_all
Climb.delete_all

#south park
crag0 = Crag.create(latitude: 40.769333, longitude: -73.977639, name: 'Rat Rock', description: 'Rat Rock is the premiere location to boulder in Central Park. On a given day you can find local residents who have been at the crag for decades as well as tourists taking a break from New York\'s other offerings to enjoy the park. The scene here is as friendly as it is storied. Below are most of the featured routes as well as where they reside on the rock.')
crag1 = Crag.create(latitude: 40.768288, longitude: -73.973694, name: 'Cat Rock', description: "Cat Rock is a sunny crag with a variety of routes. Some can be a little sketchy, bring a partner and crash pad!")
crag2 = Crag.create(latitude: 40.767532, longitude: -73.973648, name: 'Tooth Rock', description: "Tooth Rock a small molar shaped boulder with some tricky routes but right on a major pathway.")
crag3 = Crag.create(latitude: 40.768997, longitude: -73.974754, name: 'Chess Rock', description: "Chess Rock is a small assortment of easier friction climbs await you here.")
#central park
crag4 = Crag.create(latitude: 40.777927, longitude: -73.971115, name: 'Hepatitis Boulder', description: 'Hepatitis Boulder has some swampy and challenging climbs off the beaten path.')
crag5 = Crag.create(latitude: 40.778259, longitude: -73.971352, name: 'Arch Rock', description: 'Arch Rock has some nice climbs, bring a buddy and a pad to spot!')
crag6 = Crag.create(latitude: 40.775963, longitude: -73.968895, name: 'Freestanding Rock', description: 'Freestanding Rock is a small boulder with a few warmups in a peaceful setting.')
crag7 = Crag.create(latitude: 40.776009, longitude: -73.968895, name: 'Split Rock', description: 'Split Rock is one massive sloping boulder cleaved in half leaves a lot of options for new routes and traverses.')
#northside
crag7 = Crag.create(latitude: 40.795715, longitude: -73.954231, name: 'Laskar Rock', description: 'Laskar Rock is located near the big bend in the road and the ice rink.')
crag7 = Crag.create(latitude: 40.796268, longitude: -73.960930, name: 'Westside Outcrops', description: 'Westside Outcrops have a few nice climbs right on the west side of the park. There are ample benches, but bring a good pad to protect from broken glass!')
crag7 = Crag.create(latitude: 40.798023, longitude: -73.954727, name: 'Worthless Boulder', description: 'Worthless Boulder is anything but what the name suggests. High quality climbs of all levels abound.')
crag7 = Crag.create(latitude: 40.798836, longitude: -73.955688, name: 'Shit Rock', description: 'Shit Rock might be name for the first person to poop their pants here. A 17 foot slab dominates the area for those willing to brave it.')
crag7 = Crag.create(latitude: 40.799370, longitude: -73.957405, name: 'Roadside Boulder', description: 'Roadside Boulder has some spicy climbs that aren\'t very often repeated. Bring a friend, a pad, and go early before there\'s a lot of traffic if you want to climb here.')


#cat
a1 = Ascend.create(name: 'Hissy Fit', grade: 'V1', crag_id: crag1.id)
a1 = Ascend.create(name: 'The Prophet', grade: 'V10', crag_id: crag1.id)
a1 = Ascend.create(name: 'Hissy Fit', grade: 'V1', crag_id: crag1.id)
a1 = Ascend.create(name: 'The Dawg', grade: 'V5', crag_id: crag1.id)
#rat
a4 = Ascend.create(name: 'Rat Rock Traverse', grade: 'VO', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'High Traverse', grade: 'V1', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'Low Traverse', grade: 'V2', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'The Exterminator', grade: 'V6', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'The Maze', grade: 'V3', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'Butt Crack Attack', grade: 'V0-', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'Crack For Kids', grade: 'V0-', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'Banana Boogie', grade: 'V0-', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'Layback', grade: 'V1', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'Little Overhang', grade: 'V2', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'Nipple Twist', grade: 'V4', face_location: 'North', crag_id: crag0.id)
a4 = Ascend.create(name: 'Polish Traverse', grade: 'V5', face_location: 'West', crag_id: crag0.id)
a4 = Ascend.create(name: 'Sammy Dahlman\'s Bulge', grade: 'V2', face_location: 'West', crag_id: crag0.id)
a4 = Ascend.create(name: 'Koma\'s Roof', grade: 'V10', face_location: 'West', crag_id: crag0.id)
a4 = Ascend.create(name: 'The Juice', grade: 'V6', face_location: 'West', crag_id: crag0.id)
a4 = Ascend.create(name: 'Ashima Mandala', grade: 'V8', is_dangerous: 'true', face_location: 'West', crag_id: crag0.id)
a4 = Ascend.create(name: 'Brooklyn', grade: 'V6', face_location: 'West', crag_id: crag0.id)
a4 = Ascend.create(name: 'Smack the Dragon', grade: 'V6', face_location: 'West', crag_id: crag0.id)
a4 = Ascend.create(name: 'New Kid on the Block', grade: 'V5', face_location: 'West', crag_id: crag0.id)
a4 = Ascend.create(name: 'Karate Kid', grade: 'V6', face_location: 'West', crag_id: crag0.id)
a4 = Ascend.create(name: 'Butter', grade: 'V2', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'The Yuki Problem', grade: 'V8', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Tweaky Shit', grade: 'V3', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Test Piece', grade: 'V4', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Rat Patrol', grade: 'V4', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Flake Route', grade: 'V4', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Mother\'s Milk', grade: 'V4', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'The Horn', grade: 'V0-', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Easy Overhang', grade: 'V0-', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Rat Hole', grade: 'V0-', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Small Wall Left', grade: 'V0', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Master Ling', grade: 'V7', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Death by Dizzy', grade: 'V2', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Bottom Line', grade: 'V9', face_location: 'East', crag_id: crag0.id)
a4 = Ascend.create(name: 'Butter', grade: 'V2', face_location: 'East', crag_id: crag0.id)
#tooth
a2 = Ascend.create(name: 'Top Seam', grade: 'V0-', crag_id: crag2.id)
a2 = Ascend.create(name: 'Watch Your Back', grade: 'V3', crag_id: crag2.id)
a2 = Ascend.create(name: 'Cavity Crack', grade: 'V0', crag_id: crag2.id)
#chess
a3 = Ascend.create(name: 'Check Mate', grade: 'V0-', crag_id: crag3.id)
a3 = Ascend.create(name: 'Chess Rock Traverse', grade: 'V0-', crag_id: crag3.id)
a6 = Ascend.create(name: 'Knight\'s Move', grade: 'V2', face_location: 'West', crag_id: crag3.id)


a11 = Weather.create(current_temp: 99, zip: '10023')