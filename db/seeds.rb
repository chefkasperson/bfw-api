# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Word.create([
  {word: 'leao', language: 'portuguese'},
  {word: 'tigre', language: 'portuguese'},
  {word: 'esse', language: 'portuguese'},
  {word: 'beijo', language: 'portuguese'},
  {word: 'piexe', language: 'portuguese'},
  {word: 'achar', language: 'portuguese'},
  {word: 'sentar', language: 'portuguese'},
  {word: 'vaca', language: 'portuguese'},
  {word: 'suco', language: 'portuguese'},
  {word: 'sol', language: 'portuguese'}
])

ChildWord.create([
  {child_id: 1, word_id: 2, notes: 'One of her favorite animals', baby_says: 'leao'},
  {child_id: 1, word_id: 3, notes: 'First Favorite Animal... LOVES', baby_says: 'tigee'},
  {child_id: 1, word_id: 4, notes: 'Uses it to say what she wants', baby_says: 'esse'},
  {child_id: 1, word_id: 5, notes: 'A mommy favorite, smacks her lips when she says it', baby_says: 'beijo'},
  {child_id: 1, word_id: 6, notes: 'Says it perfectly', baby_says: 'peixe'},
  {child_id: 1, word_id: 7, notes: 'Plays a game where she hides stuff in the sofa and then says ACHEI', baby_says: 'achei'},
  {child_id: 1, word_id: 8, notes: 'Uses it when she wants up onto a sofa or chair', baby_says: 'sen-TAH'},
  {child_id: 1, word_id: 9, notes: 'Says well but does not use much', baby_says: 'vaca'},
  {child_id: 1, word_id: 10, notes: 'Loves juice and says suco whenever she wants more', baby_says: 'suco'},
  {child_id: 1, word_id: 11, notes: 'Loves the sun and being outside, says sol whenever she sees sunlight', baby_says: 'sol'},
])

