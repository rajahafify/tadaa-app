# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#   o
#
#
unless User.exists?
  #<User:0x00007fd497249848 id: nil, email: nil, password_digest: nil, created_at: nil, updated_at: nil>
  User.create email: "rajahafify.zaed@gmail.com", password: "password"
end

unless Talent.exists?
  user = User.first
  talents = [
    { name: "Ryan Reynolds", description: "Ryan Rodney Reynolds is a Canadian actor and film producer. He began his career starring in the Canadian teen soap opera Hillside, and had minor roles before landing the lead role on the sitcom Two Guys and a Girl between 1998 and 2001.", instagram_url: "https://www.instagram.com/vancityreynolds/", instagram_handle: "@vancityreynolds", twitter_url: "https://twitter.com/vancityreynolds", twitter_handle: "@vancityreynolds" },
    { name: "Blake Lively", description: "Blake Ellender Lively is an American actress, model, director, and advocate. Born in Los Angeles, Lively is the daughter of actor Ernie Lively, and made her professional debut in his directorial project Sandman.", instagram_url: "https://www.instagram.com/blakelively/", instagram_handle: "@blakelively", twitter_url: "https://twitter.com/blakelively", twitter_handle: "@blakelively" },
    # { name: "Hugh Jackman", description: "", instagram_url: "", instagram_handle: "", twitter_url: "", twitter_handle: "" },
    # { name: "Leonardo Dicaprio", description: "", instagram_url: "", instagram_handle: "", twitter_url: "", twitter_handle: "" },
    # { name: "Anne Hatheway", description: "", instagram_url: "", instagram_handle: "", twitter_url: "", twitter_handle: "" },
  ]

  talents.each do |talent|
    user.talents.create(talent)
  end
end
