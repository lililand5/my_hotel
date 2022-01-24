30.times do
  title = Faker::Hipster.sentence(word_count: 3)
  stars = Faker::Number.number(digits: 2)
  about_hotel = Faker::Lorem.paragraph(sentence_count: 5, supplemental: true, random_sentences_to_add: 4)
  Hotel.create title: title, stars: stars, about_hotel: about_hotel
end

