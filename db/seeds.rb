User.create!([
  {name: "user", email: "user@example.com", password_digest: "$2a$12$SN8G//Ywp3OLWfwvtHWkeOloQIglFP6ZMyRtISUpJlZm9722CxWae"},
  {name: "user2", email: "user2@example.com", password_digest: "$2a$12$i3iUm0Nf..Iuofb.mOPOHu4MM.CYswO5e3PEpJX519X05UpctSyPu"},
  {name: "user3", email: "user3@example.com", password_digest: "$2a$12$.CcAkz5HdzQqnrXq5A0JjuqDQuh4LglL9csXWeQ3JBwaEOeizZD/K"}
])
Room.create!([
  {name: "Living Room", status: true, bgimage: "Room image goes here"},
  {name: "Bedroom", status: true, bgimage: "Image of room goes here"},
  {name: "Bathroom", status: true, bgimage: "Image of room goes here"},
  {name: "Hallway", status: true, bgimage: "Image of room goes here"}
])
Task.create!([
  {title: "Clean Room", description: "Pick up clothes, vacuum, bring out dirty dishes", status: true, user_id: 1, room_id: 1},
  {title: "Make Bed", description: "Drape blanket(s) across bed, put pillows and stuffed animals at the top", status: true, user_id: 1, room_id: 2},
  {title: "Make Bed", description: "Drape blanket(s) across bed, put pillows and stuffed animals at the top", status: true, user_id: 2, room_id: 2},
  {title: "Clean Toilet", description: "Scrub outer shell of toilet/tank, use toilet bowl cleaner on inside of bowl", status: true, user_id: 2, room_id: 3},
  {title: "Move Furniture", description: "Move TV stand to west wall, re-align couches/seats/tables square to tv stand", status: true, user_id: 2, room_id: 3}
])
