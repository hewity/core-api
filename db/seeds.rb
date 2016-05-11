Comment.destroy_all
Post.destroy_all
Tag.destroy_all
Link.destroy_all

tags = Tag.create!([
  {name: "Housing"},
  {name: "Healthcare"},
  {name: "Immigration"},
  {name: "Small Business"},
  {name: "Healthcare"},
  {name: "Daycare"},
  {name: "Technology"},
  {name: "Daycare"},
  {name: "Children resource"},
  {name: "Transportation"}
])

posts = Post.create!([
  {body:"Here is a good doctor", tag:tags[1], location:"Alexandria, VA"},
  {body:"I got great legal advice", tag: tags[2], location:"Washington, DC"},
  {body:"I found cheap rent through this agent", tag:tags[0], location:"Arlington, VA"},
  {body:"I found a great site on how to start a small business", tag:tags[3], location:"Washington, DC "},
  {body:"Here is a great daycare center for adults", tag:tags[1], location:"Fairfax, VA"},
  {body:"I found a great daycare center for children", tag:tags[5], location:"Fairfax, VA"},
  {body:"If you are not able to afford to buy a new phone I found a free cell phone ", tag:tags[6], location:"Fairfax, VA"},
  {body:"I found a great transportation site", tag:tags[9], location:"Fairfax, VA"},
  {body:"This is very helpfull site for child missing ", tag:tags[8], location:"Fairfax, VA"}
])

comments = Comment.create!([
  {author:"Wes", body: "Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", post: posts[0]},
  {author:"James", body: "Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", post: posts[1]},
  {author:"Josh", body: "Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", post: posts[1]},
  {author:"Hewan", body: "Maecenas posuere nulla id felis fermentum posuere. Phasellus nec leo ipsum. Fusce tempus leo eu nulla viverra tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vulputate blandit scelerisque.", post: posts[1]}
])


links = Link.create!([
  {about:"The federally funded and locally administered Arlington County Housing Choice (ACHCV) Program helps low-income families, the elderly and people with disabilities obtain safe, decent, and affordable housing in the private market.", url: "http://housing.arlingtonva.us/get-help/rental-services/achcv-program/", tag: tags[0]},

  {about:"Neighborhood Health has been setting the standard for excellence in healthcare in Northern Virginia for over 17 years. Our philosophy of being innovative and compassionate in the delivery of health services guides our organization. We believe in an organizational culture of inclusiveness along with the willingness to be bold in our decision making process. ", url:"http://www.neighborhoodhealthva.org/", tag: tags[1]},

  {about:"Immigration Legal Services (ILS) focuses on the provision of direct legal immigration services to foreign-born individuals and their families. Last year, we worked with more than 4,400 cases, ranging from consultations to full representation.  ILS has represented individuals from more than 135 countries around the world needing legal assistance with an immigration matter.  ILS also focuses on training lawyers to provide pro bono services and educating community groups on the latest immigration issues.", url:"https://www.catholiccharitiesdc.org/ILSStaff", tag: tags[2]},

  {about:"Starting a business is an exciting proposition, but it’s also an incredibly challenging undertaking. The resources in this section will help you learn about what it takes to start a business.", url:"https://www.sba.gov/starting-business/how-start-business", tag: tags[3]},

  {about:"When your loved one needs care during the day, but you work or have other obligations, Adult Day Health Care (ADHC) centers are here for you. For more than 35 years, the Fairfax County Health Department's professional staff has been caring for older adults and adults with disabilities, including all types of dementia. The service allows those who need supervision during the day to continue living at home. Adult Day Health Care offers affordable quality care, meaningful activities, new friendships and peace of mind.", url:"http://www.fairfaxcounty.gov/hd/adhc/", tag: tags[5]},

  {about:"The Child Care Assistance and Referral program provides financial assistance for child care to low and moderate income Fairfax County families who are working, or who are in education/training programs and need assistance with paying for the cost of child care. The program pays for child care in centers, family child care homes, or School Age Child Care.", url:"http://www.fairfaxcounty.gov/ofc/ccar.htm", tag: tags[5]},

  {about:"Free Cell Phone bullet Unlimited Texts, 500 Free Minutes for the First 4 Months. 350 Minutes and Unlimited Texts thereafter", url:"https://www.safelinkwireless.com/Enrollment/Safelink/en/NewPublic/index.html", tag: tags[6]},

  {about:"To find a Fairfax Connector Maps and Schedules click here", url:"http://www.fairfaxcounty.gov/connector/routes/", tag: tags[9]},

  {about:"Child Find of America provides outstanding professional services designed to prevent and resolve child abduction and the family conflicts that can lead to abduction an abuse", url:"http://childfindofamerica.org/", tag: tags[8]}
])
