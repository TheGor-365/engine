50.times do |store_index|
  store = Store.create(
    title: Faker::Company.name
  )
  puts "#{store} - #{store_index.next} created"

  10.times do |book_index|
    book = Book.create(
      author:   Faker::Science.scientist,
      overview: Faker::Lorem.paragraph(sentence_count: 20),
      store_id: store.id
    )
    puts "#{book} - #{book_index.next} created"
  end
end
