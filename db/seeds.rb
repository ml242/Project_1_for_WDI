# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
crag1 = Crags.create(name: 'Cat Rock')
crag2 = Crags.create(name: 'Tooth Rock')
crag3 = Crags.create(name: 'Chess Rock')

a1 = Ascends.create(name: 'Hissy Fit', grade: 'V1', crag_id: 2)
a1 = Ascends.create(name: 'The Prophet', grade: 'V10', crag_id: 2)
a1 = Ascends.create(name: 'Hissy Fit', grade: 'V1', crag_id: 2)
a1 = Ascends.create(name: 'The Dawg', grade: 'V5', crag_id: 2)

a2 = Ascends.create(name: 'Top Seam', grade: 'V0-', crag_id: 3)
a2 = Ascends.create(name: 'Watch Your Back', grade: 'V3', crag_id: 3)
a2 = Ascends.create(name: 'Cavity Crack', grade: 'V0', crag_id: 3)

a3 = Ascends.create(name: 'Check Mate', grade: 'V0-', crag_id: 4)
a3 = Ascends.create(name: 'Chess Rock Traverse', grade: 'V0-', crag_id: 4)