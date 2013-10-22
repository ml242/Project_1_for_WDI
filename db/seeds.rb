# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
crag1 = Crag.create(name: 'Cat Rock')
crag2 = Crag.create(name: 'Tooth Rock')
crag3 = Crag.create(name: 'Chess Rock')

a1 = Ascend.create(name: 'Hissy Fit', grade: 'V1', crag_id: 2)
a1 = Ascend.create(name: 'The Prophet', grade: 'V10', crag_id: 2)
a1 = Ascend.create(name: 'Hissy Fit', grade: 'V1', crag_id: 2)
a1 = Ascend.create(name: 'The Dawg', grade: 'V5', crag_id: 2)

a2 = Ascend.create(name: 'Top Seam', grade: 'V0-', crag_id: 3)
a2 = Ascend.create(name: 'Watch Your Back', grade: 'V3', crag_id: 3)
a2 = Ascend.create(name: 'Cavity Crack', grade: 'V0', crag_id: 3)

a3 = Ascend.create(name: 'Check Mate', grade: 'V0-', crag_id: 4)
a3 = Ascend.create(name: 'Chess Rock Traverse', grade: 'V0-', crag_id: 4)