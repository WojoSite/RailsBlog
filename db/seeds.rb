# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# username, password, firstname, lastname, email, imgsrc
User.destroy_all
User.create([
    { username:"mwojtkun", password:"coder2017", firstname:"Matt", lastname:"Wojtkun", email:"matt.wojtkun@gmail.com", imgsrc: "wojo.jpg" },
    { username:"spiderman", password:"spideysense", firstname:"Peter", lastname:"Parker", email:"pparker@dailybugle.com", imgsrc: "spiderman.jpg" },
    { username:"tbrady", password:"goat", firstname:"Tom", lastname:"Brady", email:"tom@tb12.com", imgsrc: "tb.jpg" }
])

# user_id, title, text
Post.destroy_all
Post.create([
    { user_id:1, title:"First Post", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc." },
    { user_id:2, title:"Second Post", text:"Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh." },
    { user_id:3, title:"Third Post", text:"Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices." }
])

# user_id, post_id, content
Comment.destroy_all
Comment.create([
    { user_id:1, post_id:3, content:"Vestibulum tincidunt malesuada tellus." },
    { user_id:2, post_id:1, content:"Morbi in dui quis est" },
    { user_id:3, post_id:2, content:"Sed aliquet risus a tortor." },
    { user_id:1, post_id:3, content:"Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos." },
    { user_id:2, post_id:1, content:"Fusce ac turpis quis ligula lacinia aliquet." },
    { user_id:3, post_id:2, content:"In vel mi sit amet augue congue elementum." },
    { user_id:1, post_id:3, content:"Sed cursus ante dapibus diam." },
    { user_id:2, post_id:1, content:"Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo." },
    { user_id:3, post_id:2, content:"Integer id quam." },
    { user_id:1, post_id:3, content:"Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede." }
])
