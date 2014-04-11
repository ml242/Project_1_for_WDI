# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# FIXME remove hard coded ids and associate using activerecord relationships. c1.ascends << a1
# crag0 = Crag.create(name: 'Rat Rock', description: 'Rat Rock is the premiere location to boulder in Central Park. On a given day you can find local residents who have been at the crag for decades as well as tourists taking a break from New York\'s other offerings to enjoy the park. The scene here is as friendly as it is storied. Below are most of the featured routes as well as where they reside on the rock.')
# crag1 = Crag.create(name: 'Cat Rock')
crag2 = Crag.create(name: 'Tooth Rock')
crag3 = Crag.create(name: 'Chess Rock')

# a1 = Ascend.create(name: 'Hissy Fit', grade: 'V1', crag_id: 2)
# a1 = Ascend.create(name: 'The Prophet', grade: 'V10', crag_id: 2)
# a1 = Ascend.create(name: 'Hissy Fit', grade: 'V1', crag_id: 2)
# a1 = Ascend.create(name: 'The Dawg', grade: 'V5', crag_id: 2)

# a2 = Ascend.create(name: 'Top Seam', grade: 'V0-', crag_id: 3)
# a2 = Ascend.create(name: 'Watch Your Back', grade: 'V3', crag_id: 3)
# a2 = Ascend.create(name: 'Cavity Crack', grade: 'V0', crag_id: 3)

# a3 = Ascend.create(name: 'Check Mate', grade: 'V0-', crag_id: 4)
# a3 = Ascend.create(name: 'Chess Rock Traverse', grade: 'V0-', crag_id: 4)

# a4 = Ascend.create(name: 'Rat Rock Traverse', grade: 'VO', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'High Traverse', grade: 'V1', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Low Traverse', grade: 'V2', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'The Exterminator', grade: 'V6', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'The Maze', grade: 'V3', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Butt Crack Attack', grade: 'V0-', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Crack For Kids', grade: 'V0-', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Banana Boogie', grade: 'V0-', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Layback', grade: 'V1', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Little Overhang', grade: 'V2', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Nipple Twist', grade: 'V4', face_location: 'North', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Polish Traverse', grade: 'V5', face_location: 'West', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Sammy Dahlman\'s Bulge', grade: 'V2', face_location: 'West', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Koma\'s Roof', grade: 'V10', face_location: 'West', crag_id: crag0.id)
# a4 = Ascend.create(name: 'The Juice', grade: 'V6', face_location: 'West', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Ashima Mandala', grade: 'V8', is_dangerous: 'true', face_location: 'West', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Brooklyn', grade: 'V6', face_location: 'West', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Smack the Dragon', grade: 'V6', face_location: 'West', crag_id: crag0.id)
# a4 = Ascend.create(name: 'New Kid on the Block', grade: 'V5', face_location: 'West', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Karate Kid', grade: 'V6', face_location: 'West', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Butter', grade: 'V2', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'The Yuki Problem', grade: 'V8', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Tweaky Shit', grade: 'V3', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Test Piece', grade: 'V4', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Rat Patrol', grade: 'V4', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Flake Route', grade: 'V4', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Mother\'s Milk', grade: 'V4', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'The Horn', grade: 'V0-', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Easy Overhang', grade: 'V0-', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Rat Hole', grade: 'V0-', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Small Wall Left', grade: 'V0', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Master Ling', grade: 'V7', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Death by Dizzy', grade: 'V2', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Bottom Line', grade: 'V9', face_location: 'East', crag_id: crag0.id)
# a4 = Ascend.create(name: 'Butter', grade: 'V2', face_location: 'East', crag_id: crag0.id)

a5 = Ascend.create(name: 'Top Seam', grade: 'V0-', face_location: 'West', crag_id: crag2.id)
a6 = Ascend.create(name: 'Knight\'s Move', grade: 'V2', face_location: 'West', crag_id: crag3.id)