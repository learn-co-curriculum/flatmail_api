later = Label.create({name: "For Later"})
important = Label.create({name: "Important"})


10.times do |i|
  Message.create(
    to: "Steven Nunez",
    from: "Barack Obama",
    body: "Important Message #{i}",
    label: important
  )
end

10.times do |i|
  Message.create(
    to: "Steven Nunez",
    from: "Publisher's Clearing House",
    body: "Unimportant Message #{i}",
    label: later
  )
end
