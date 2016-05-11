Comment.destroy_all
Post.destroy_all
Tag.destroy_all
Link.destroy_all

posts = Post.create!([
  {body:"I found a good doctor", topic:"Healthcare", location:"Alexandria, VA"},
  {body:"I got great legal advice", topic:"Immigration", location:"Washington, DC"},
  {body:"I found cheap rent through this agent", topic:"Housing", location:"Arlington, VA"}
])

comments = Comment.create!([
  {author:"Wes Reed", body: "Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", post: posts[0]},
  {author:"Author 1", body: "Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", post: posts[1]},
  {author:"Author 2", body: "Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", post: posts[1]}
])


links = Link.create!([
  {about:"The federally funded and locally administered Arlington County Housing Choice (ACHCV) Program helps low-income families, the elderly and people with disabilities obtain safe, decent, and affordable housing in the private market.", url: "http://housing.arlingtonva.us/get-help/rental-services/achcv-program/"},

  {about:"Neighborhood Health has been setting the standard for excellence in healthcare in Northern Virginia for over 17 years. Our philosophy of being innovative and compassionate in the delivery of health services guides our organization. We believe in an organizational culture of inclusiveness along with the willingness to be bold in our decision making process. ", url:"http://www.neighborhoodhealthva.org/"},

  {about:"Immigration Legal Services (ILS) focuses on the provision of direct legal immigration services to foreign-born individuals and their families. Last year, we worked with more than 4,400 cases, ranging from consultations to full representation.  ILS has represented individuals from more than 135 countries around the world needing legal assistance with an immigration matter.  ILS also focuses on training lawyers to provide pro bono services and educating community groups on the latest immigration issues.", url:"https://www.catholiccharitiesdc.org/ILSStaff"}
  ])


tags = Tag.create!([
  {name:"Housing", post: posts[2], link: links[0]},
  {name: "Healthcare", post: posts[0], link: links[1]},
  {name:"Immigration", post: posts[1], link: links[2]}
  ])
