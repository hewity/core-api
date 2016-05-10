Comment.destroy_all
Post.destroy_all
Tag.destroy_all
Link.destroy_all

posts = Post.create!([
  {body:"I found a good doctor", topic:"Medical Care", location:"Woodbridge, VA"},
  {body:"I got great legal advice", topic:"Immigration", location:"Washington, DC"},
  {body:"I found cheap rent through this agent", topic:"Housing", location:"Langley Park, MD"}
  ])

comments = Comment.create!([
{author:"Wes Reed", body: "Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", post: posts[0]},
{author:"Author 1", body: "Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", post: posts[1]},
{author:"Author 2", body: "Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", post: posts[1]}
])


links = Link.create!([
  {about:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus mollis interdum velit, quis venenatis urna. Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", url: "http://www.livescience.com/images/i/000/076/996/iFF/walking-nature-150629.jpg?1435603472"},
  {about:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus mollis interdum velit, quis venenatis urna. Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", url:"http://givewithjoy.org/images/istock%20cup%20hands%20needy%20hungry%20poor%20poverty%20soup%20bowl%20web.jpg"},
  {about:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus mollis interdum velit, quis venenatis urna. Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", url:"http://www.aimlower.com/wp-content/uploads/Child-and-Adult-holding-hands.jpg"}
  ])


tags = Tag.create!([
  {name:"Housing"},
  {name: "Doctors"},
  {name:"Day Care"}
  ])
