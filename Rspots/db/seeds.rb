
# Delete all previous seed data // blank slate
User.delete_all
Group.delete_all
Review.delete_all
Location.delete_all
GroupLocation.delete_all
GroupUser.delete_all

# Users
  u1 = User.create(provider: "facebook", uid: "10203844294482291", first_name: "Peter", last_name: "Schulz", image: "http://graph.facebook.com/10203844294482291/picture", oauth_token: "CAALvadZCq1V4BADlKzZA0VBerJ2NlgK7qVtJ32zdqgfp0PEZBkCWYofDlAdPt7VsZCmXVZCdUWx33sZB0UReGEFHFHuVLaVAvuzbtzbZCxWw6vBcUWML2I6ZAfQPlgskzJQQ2R25AeCuHz5Yo8ZBXbYjocZCWObfNaQ83v0ZAXo6AzZAxZCKxGmrLPyVCu6MsLwa8hDBGpZBbH65Djcy9841qj2XLZA...", oauth_expires_at: "2015-01-20 23:29:57")
  u2 = User.create(provider: "facebook", uid: "nil", first_name: "Melody", last_name: "Serra", image: "http://graph.facebook.com/10203844294482291/picture")
  u3 = User.create(provider: "facebook", uid: "nil", first_name: "Tim", last_name: "Gray", image: "http://graph.facebook.com/10203844294482291/picture")

# Groups
  g1 = Group.create(name: "General Assembly", lng:"37.7912563", lat:"-122.4006792",)
  g2 = Group.create(name: "WDI", lng:"37.7912563", lat:"-122.4006792",)

# Locations
  l1 = Location.create(title:"Mixt Greens",lng:"37.791578", lat:"-122.40063700000002", address:"120 Sansome St., San Francisco, CA", place_id:"ChIJ62yCEWKAhYARNL0YQVpRuKg", website:"http://mixtgreens.com", phone_number:"415-555-5555")
  l2 = Location.create(title:"Rickhouse",lng:"37.79046", lat:"-122.40386799999999", address:"246 Kearny St, San Francisco", place_id:"ChIJd7ebnImAhYARhr91iINx01g", website:"http://www.rickhousebar.com/", phone_number:"415-777-7777")
  l3 = Location.create(title:"House of NanKing",lng:"37.796477", lat:"-122.40542600000003", address:"919 Kearny St, San Francisco, CA 94133, United States", place_id:"ChIJvS92wfSAhYARC2tq3BmjmIM", website:"http://poop.com", phone_number:"415-333-3333")

#GroupLocation
  gl1 = GroupLocation.create(group_id: g1.id, location_id: l1.id)
  gl2 = GroupLocation.create(group_id: g1.id, location_id: l2.id)
  gl3 = GroupLocation.create(group_id: g1.id, location_id: l3.id)
  #group 2's locations
  gl4 = GroupLocation.create(group_id: g2.id, location_id: l1.id)
  gl5 = GroupLocation.create(group_id: g2.id, location_id: l2.id)

#GroupLocation
  gu1 = GroupUser.create(group_id: g1.id, user_id: u1.id, is_owner: true)
  gu2 = GroupUser.create(group_id: g1.id, user_id: u2.id, is_owner: false)
  gu3 = GroupUser.create(group_id: g1.id, user_id: u3.id, is_owner: false)
  #group 2's users
  gu4 = GroupUser.create(group_id: g2.id, user_id: u1.id, is_owner: false)
  gu5 = GroupUser.create(group_id: g2.id, user_id: u2.id, is_owner: true)

# Reviews
  r1 = Review.create(rating:1, review:"THIS IS A REVIEW OF MIXT GREENS", user_id: u1.id, group_location_id: gl1.id)
  r2 = Review.create(rating:-1, review:"THIS IS A REVIEW OF Rickhouse", user_id: u2.id, group_location_id: gl2.id)
  r3 = Review.create(rating:1, review:"THIS IS A REVIEW OF House of NanKing", user_id: u3.id, group_location_id: gl3.id)
  #group 2's reviews
  r1 = Review.create(rating:1, review:"THIS IS A REVIEW OF MIXT GREENS", user_id: u1.id, group_location_id: gl4.id)
  r2 = Review.create(rating:-1, review:"THIS IS A REVIEW OF Rickhouse", user_id: u2.id, group_location_id: gl5.id)



