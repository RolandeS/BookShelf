# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


demo_user = User.create!(
    first_name: "Demo",
    last_name: "User",
    email: "demo.user@bookshelf.com",
    password: "1",
    password_confirmation: "1"
  )

#--------------------------RUBY ON RAILS------------------------------
rubyOnRails_shelf = Shelf.create!(
  name: "Ruby On Rails",
  user: demo_user,
  )

Book.create!(
  name: "Rails Guide",
  link: "guides.rubyonrails.org/",
  read: 'Revisit',
  note: "Add your note here",
  shelf: rubyOnRails_shelf
  )

Book.create!(
  name: "Rails API Docs",
  link: "api.rubyonrails.org/",
  read: 'Revisit',
  note: "Add your note here",
  shelf: rubyOnRails_shelf
  )

Book.create!(
  name: "Ruby Docs",
  link: "ruby-doc.org/",
  read: 'Revisit',
  note: "Add your note here",
  shelf: rubyOnRails_shelf
  )

Book.create!(
  name: "RailsCasts",
  link: "railscasts.com/",
  read: 'Revisit',
  note: "Add your note here",
  shelf: rubyOnRails_shelf
  )

Book.create!(
  name: "Ruby Warrior",
  link: "www.bloc.io/ruby-warrior#/",
  read: 'Revisit',
  note: "Add your note here",
  shelf: rubyOnRails_shelf
  )

Book.create!(
  name: "Code Wars",
  link: "www.codewars.com/",
  read: 'Revisit',
  note: "Add your note here",
  shelf: rubyOnRails_shelf
  )

Book.create!(
  name: "Codecademy",
  link: "www.codecademy.com/tracks/ruby",
  read: 'Revisit',
  note: "Add your note here",
  shelf: rubyOnRails_shelf
  )


#--------------------------JavaScript - JQuery ------------------------------
js_shelf = Shelf.create!(
  name: "JavaScript - JQuery",
  user: demo_user,
  )

Book.create!(
  name: "JavaScript - MDN",
  link: "developer.mozilla.org/en-US/docs/Web/JavaScript",
  read: 'Revisit',
  note: "Add your note here",
  shelf: js_shelf
  )

Book.create!(
  name: "JQuery API Docs",
  link: "api.jquery.com/",
  read: 'Revisit',
  note: "Parent site is jquery.com.",
  shelf: js_shelf
  )

Book.create!(
  name: "Google Hosted-jQuery",
  link: "developers.google.com/speed/libraries/devguide#jquery",
  read: 'Revisit',
  note: "Google Hosted Libraries: jQuery -- saves you from having to download it to your project.",
  shelf: js_shelf
  )

Book.create!(
  name: "w3schools",
  link: "www.w3schools.com/jsref/default.asp",
  read: 'Revisit',
  note: "Add your note here",
  shelf: js_shelf
  )

Book.create!(
  name: "jsfiddle",
  link: "jsfiddle.net",
  read: 'Revisit',
  note: "Other alternatives: CodePen, JS Bin",
  shelf: js_shelf
  )

Book.create!(
  name: "CodePen",
  link: "codepen.io/",
  read: 'Revisit',
  note: "Add your note here",
  shelf: js_shelf
  )

Book.create!(
  name: "Codecademy - JS",
  link: "www.codecademy.com/tracks/javascript",
  read: 'Revisit',
  note: "Add your note here",
  shelf: js_shelf
  )

Book.create!(
  name: "JavaScript's 'This'",
  link: "javascriptissexy.com/understand-javascripts-this-with-clarity-and-master-it/",
  read: 'Revisit',
  note: "More articles about this as well. like: unschooled.org/2012/03/understanding-javascript-this/",
  shelf: js_shelf
  )

#-------------------------- HTML - CSS ------------------------------
htmlCss_shelf = Shelf.create!(
  name: "HTML - CSS",
  user: demo_user,
  )

Book.create!(
  name: "Beginner's Guide",
  link: "learn.shayhowe.com/html-css/",
  read: 'Revisit',
  note: "Add your note here",
  shelf: htmlCss_shelf
  )

Book.create!(
  name: "HTML5 Doctor",
  link: "html5doctor.com",
  read: 'Revisit',
  note: "Add your note here",
  shelf: htmlCss_shelf
  )

Book.create!(
  name: "CSS Zen Garden",
  link: "www.csszengarden.com/",
  read: 'Revisit',
  note: "Add your note here",
  shelf: htmlCss_shelf
  )

Book.create!(
  name: "CSS Awards",
  link: "www.cssawds.com/",
  read: 'Revisit',
  note: "Great design inspiration!",
  shelf: htmlCss_shelf
  )

Book.create!(
  name: "CSS Diner",
  link: "flukeout.github.io/",
  read: 'Revisit',
  note: "Great practice site for CSS selectors!",
  shelf: htmlCss_shelf
  )

Book.create!(
  name: "HTML - MDN",
  link: "developer.mozilla.org/en-US/Learn/HTML",
  read: 'Revisit',
  note: "Add your note here",
  shelf: htmlCss_shelf
  )

Book.create!(
  name: "CSS - MDN",
  link: "developer.mozilla.org/en-US/Learn/CSS",
  read: 'Revisit',
  note: "Add your note here",
  shelf: htmlCss_shelf
  )

Book.create!(
  name: "Codecademy-HTML-CSS",
  link: "www.codecademy.com/tracks/web",
  read: 'Revisit',
  note: "Add your note here",
  shelf: htmlCss_shelf
  )


#-------------------------- From Planning to Modeling -----------------------------------
planning_shelf = Shelf.create!(
  name: "from Planning to Modeling",
  user: demo_user
  )

Book.create!(
  name: "Designing: INVISION",
  link: "www.invisionapp.com/",
  read: 'Revisit',
  note: "Design App",
  shelf: planning_shelf
  )

Book.create!(
  name: "Mockups: balsamiq",
  link: "balsamiq.com/",
  read: 'Revisit',
  note: "Mockups App",
  shelf: planning_shelf
  )

Book.create!(
  name: "Design Sprint",
  link: "playbook.thoughtbot.com/#product-design-sprint",
  read: 'Revisit',
  note: "Thoughtbot is a leading Rails consultancy. Here's how they plan our their products.",
  shelf: planning_shelf
  )

Book.create!(
  name: "Sketch3",
  link: "bohemiancoding.com/sketch/",
  read: 'Revisit',
  note: "A new Mac app gaining traction for making front-end designs for the web.",
  shelf: planning_shelf
  )


#-------------------------- Testing -----------------------------------
testing_shelf = Shelf.create!(
  name: "Testing",
  user: demo_user
  )

Book.create!(
  name: "Rspec",
  link: "rspec.info/",
  read: 'Revisit',
  note: "RSpec Website",
  shelf: testing_shelf
  )

Book.create!(
  name: "Rspec Docs",
  link: "relishapp.com/rspec",
  read: 'Revisit',
  note: "Go here to learn about all the cool features and methods inside of RSpec",
  shelf: testing_shelf
  )

Book.create!(
  name: "Relish",
  link: "www.relishapp.com/rspec/rspec-rails/v/3-0/docs",
  read: 'Revisit',
  note: "More RSpec documentations",
  shelf: testing_shelf
  )

Book.create!(
  name: "Capybara",
  link: "jnicklas.github.io/capybara/",
  read: "Gem: Write feature specs that run in a web browser.",
  shelf: testing_shelf
  )


#-------------------------- Stay Connected ------------------------
stayConnected_shelf = Shelf.create!(
  name: "Stay Connected",
  user: demo_user,
	)

Book.create!(
  name: "Twitter",
  link: "www.twitter.com",
  read: 'Revisit',
  note: "Keep tweeting",
  shelf: stayConnected_shelf
	)

Book.create!(
  name: "LinkedIn",
  link: "www.linkedin.com",
  read: 'Revisit',
  note: "My professional network.",
  shelf: stayConnected_shelf
	)

Book.create!(
  name: "Instagram",
  link: "www.instagram.com",
  read: 'Revisit',
  note: "Add your notes here",
  shelf: stayConnected_shelf
	)

Book.create!(
  name: "Facebook",
  link: "www.facebook.com",
  read: 'Revisit',
  note: "Just socialize",
  shelf: stayConnected_shelf
  )

#-------------------------- News ------------------------
news_shelf = Shelf.create!(
  name: "News",
  user: demo_user
  )

Book.create!(
  name: "CNN",
  link: "www.cnn.com",
  read: 'Revisit',
  note: "Check this often",
  shelf: news_shelf
  )
Book.create!(
  name: "CBC",
  link: "www.cbc.ca/news/canada",
  read: 'Revisit',
  note: "Check this often",
  shelf: news_shelf
  )


#-------------------------- Tech News -------------------------------
tech_shelf = Shelf.create!(
  name: "Tech News",
  user: demo_user
  )

Book.create!(
  name: "TechCrunch",
  link: "www.techcrunch.com",
  read: 'Revisit',
  note: "Check Daily",
  shelf: tech_shelf
  )
Book.create!(
  name: "Wired",
  link: "www.wired.com",
  read: 'Revisit',
  note: "Check Daily",
  shelf: tech_shelf
  )
Book.create!(
  name: "HackerNews",
  link: "www.thehackernews.com",
  read: '',
  note: "",
  shelf: tech_shelf
  )
Book.create!(
  name: "Mashable",
  link: "mashable.com",
  read: '',
  note: "",
  shelf: tech_shelf
  )



#-------------------------- JS Libraries/Templates (Template Engines) -----------------
jsTemplates_shelf = Shelf.create!(
  name: "JS Libraries",
  user: demo_user
  )

Book.create!(
  name: "React",
  link: "facebook.github.io/react/",
  read: 'Revisit',
  note: "It's a JavaScript library developed by Facebook for building dynamic UIs",
  shelf: jsTemplates_shelf
  )

Book.create!(
  name: "Blaze",
  link: "meteor.github.io/blaze/",
  read: 'Revisit',
  note: "The Meteor templating library that does reactive, two-way databinding out of the box. Next level!",
  shelf: jsTemplates_shelf
  )

Book.create!(
  name: "Underscore",
  link: "underscorejs.org/#template",
  read: 'Revisit',
  note: "JavaScript template library that uses Ruby syntax rather than mustache syntax for data binding.",
  shelf: jsTemplates_shelf
  )

Book.create!(
  name: "Handlebars JS",
  link: "handlebarsjs.com/",
  read: 'Revisit',
  note: "Widely used Javascript templating library that allows for conditional content.",
  shelf: jsTemplates_shelf
  )

Book.create!(
  name: "ICanHaz JS",
  link: "icanhazjs.com/",
  read: 'Revisit',
  note: "Simple front-end templating library.",
  shelf: jsTemplates_shelf
  )

Book.create!(
  name: "Velocity",
  link: "julian.com/research/velocity/",
  read: 'Revisit',
  note: "A JS library (with a jQuery plugin) that helps make animations performant. To be used for complex animations mainly, things beyond transitions.",
  shelf: jsTemplates_shelf
  )

Book.create!(
  name: "Famo.us",
  link: "famo.us/",
  read: 'Revisit',
  note: "Famo.us is a new JS library whose aim is to make web apps with native performance.",
  shelf: jsTemplates_shelf
  )

#-------------------------- Sass - CSS ----------------------------------
sass_shelf = Shelf.create!(
  name: "Sass - CSS",
  user: demo_user
  )

Book.create!(
  name: "Foundation",
  link: "foundation.zurb.com/",
  read: 'Revisit',
  note: "A Sass-based framework that helps you get past boilerplate code and be productive.",
  shelf: sass_shelf
  )

Book.create!(
  name: "Sass",
  link: "sass-lang.com/",
  read: 'Revisit',
  note: "CSS extension language.",
  shelf: sass_shelf
  )

Book.create!(
  name: "Compass",
  link: "compass-style.org/",
  read: 'Revisit',
  note: "A library of Sass functions and mixins that can help speed up CSS authoring",
  shelf: sass_shelf
  )

Book.create!(
  name: "Bourbon",
  link: "bourbon.io/",
  read: 'Revisit',
  note: "A lightweight library of Sass functions and mixins that can help speed up CSS authoring",
  shelf: sass_shelf
  )

#-------------------------- CSS Libraries & Tools ----------------------------------
cssTools_shelf = Shelf.create!(
  name: "CSS Tools",
  user: demo_user
  )

Book.create!(
  name: "Normalize",
  link: "necolas.github.io/normalize.css/",
  read: 'Revisit',
  note: "Creates a cross-browser starting point for your styles.",
  shelf: cssTools_shelf
  )

Book.create!(
  name: "Smacss CSS guide",
  link: "smacss.com/",
  read: 'Revisit',
  note: "Guidelines for writing semantic, extensible and organized CSS rules from Dave Shea",
  shelf: cssTools_shelf
  )

Book.create!(
  name: "Animate CSS",
  link: "daneden.github.io/animate.css/",
  read: 'Revisit',
  note: "A CSS animation library made by Dan Eden.",
  shelf: cssTools_shelf
  )

Book.create!(
  name: "Cubic Bezier",
  link: "cubic-bezier.com/#.17,.67,.83,.67",
  read: 'Revisit',
  note: "A fun tool made by Lea Verou that allows you to create your own cubic bezier timing functions.",
  shelf: cssTools_shelf
  )

Book.create!(
  name: "Timing - MDN",
  link: "developer.mozilla.org/en-US/docs/Web/CSS/timing-function",
  read: 'Revisit',
  note: "MDN documentation on the different timing functions you can provide to the transition CSS rule.",
  shelf: cssTools_shelf
  )
Book.create!(
  name: "Animation - MDN",
  link: "developer.mozilla.org/en-US/docs/Web/Guide/CSS/Using_CSS_animations",
  read: 'Revisit',
  note: "MDN documentation on using CSS animations (@keyframes).",
  shelf: cssTools_shelf
  )

Book.create!(
  name: "Transitions - MDN",
  link: "developer.mozilla.org/en-US/docs/Web/Guide/CSS/Using_CSS_transitions",
  read: 'Revisit',
  note: "MDN documentation on using CSS transitions.",
  shelf: cssTools_shelf
  )

#-------------------------- Banks ----------------------
bank_shelf = Shelf.create!(
  name: "Banks",
  user: demo_user
  )

Book.create!(
  name: "TD",
  link: "www.tdcanadatrust.com",
  read: 'Revisit',
  note: "Check this weekly!!",
  shelf: bank_shelf
  )
Book.create!(
  name: "RBC",
  link: "www.rbcroyalbank.com",
  read: 'Revisit',
  note: "My very old account",
  shelf: bank_shelf
  )
Book.create!(
  name: "BMO",
  link: "www.bmo.com",
  read: 'Revisit',
  note: "My bills account",
  shelf: bank_shelf
  )

#-------------------------- Emails -------------------
email_shelf = Shelf.create!(
  name: "Emails",
  user: demo_user
  )

Book.create!(
  name: "Gmail",
  link: "gmail.com",
  read: 'Revisit',
  note: "My personal emails",
  shelf: email_shelf
  )
Book.create!(
  name: "Yahoo",
  link: "www.yahoo.com",
  read: 'Revisit',
  note: "My older personal emails",
  shelf: email_shelf
  )
Book.create!(
  name: "Hotmail",
  link: "www.hotmail.com",
  read: 'Revisit',
  note: "My super old personal emails",
  shelf: email_shelf
  )

#-------------------------- Shopping -------------------------
shopping_shelf = Shelf.create!(
  name: "Shopping",
  user: demo_user
  )

Book.create!(
  name: "Amazon",
  link: "www.amazon.com",
  read: 'Revisit',
  note: "Shop shop shop",
  shelf: shopping_shelf
  )

Book.create!(
  name: "Ebay",
  link: "www.ebay.com",
  read: 'Revisit',
  note: "Shop shop shop",
  shelf: shopping_shelf
  )

#-------------------------- Movies -------------------------------
movie_shelf = Shelf.create!(
  name: "Movies",
  user: demo_user
  )

Book.create!(
  name: "Imdb",
  link: "www.imdb.com",
  read: 'Revisit',
  note: "Check reviews here",
  shelf: movie_shelf
  )
Book.create!(
  name: "Netflix",
  link: "www.netflix.com",
  read: 'Revisit',
  note: "Watch Walking Dead!!",
  shelf: movie_shelf
  )
Book.create!(
  name: "Youtube",
  link: "www.Youtube.com",
  read: '',
  note: "",
  shelf: movie_shelf
  )
Book.create!(
  name: "Hollywood",
  link: "www.hollywood.com",
  read: '',
  note: "",
  shelf: movie_shelf
  )

#-------------------------- Recipes ----------------------------
recipe_shelf = Shelf.create!(
  name: "Recipes",
  user: demo_user
  )

Book.create!(
  name: "AllRecipes",
  link: "allrecipes.com",
  read: 'Revisit',
  note: "Check the crispy sweet and spicy chicken wings recipe!!",
  shelf: recipe_shelf
  )
Book.create!(
  name: "Yummly",
  link: "www.yummly.com",
  read: 'Revisit',
  note: "Check Daily",
  shelf: recipe_shelf
  )
Book.create!(
  name: "Epicurious",
  link: "www.epicurious.com/",
  read: '',
  note: "",
  shelf: recipe_shelf
  )
Book.create!(
  name: "Foodnetwork",
  link: "www.foodnetwork.com/",
  read: '',
  note: "",
  shelf: recipe_shelf
  )

#-------------------------- Readings -----------------------------------
reading_shelf = Shelf.create!(
  name: "To read: articles & more",
  user: demo_user
  )

Book.create!(
  name: "Rest principles",
  link: "www.ics.uci.edu/~fielding/pubs/dissertation/top.htm",
  read: 'Revisit',
  note: "PhD thesis that outlined the principles in ReST.",
  shelf: reading_shelf
  )

Book.create!(
  name: "SOA - Amazon's API",
  link: "apievangelist.com/2012/01/12/the-secret-to-amazons-success-internal-apis/",
  read: 'Revisit',
  note: "An article about the mandate that turned Amazon into a service-oriented company.",
  shelf: reading_shelf
  )

Book.create!(
  name: "Responsive Design",
  link: "alistapart.com/article/responsive-web-design",
  read: 'Revisit',
  note: "The original article by Ethan Marcotte coining the term Responsive Web Design and describing the techniques to achieve it in practice.",
  shelf: reading_shelf
  )

Book.create!(
  name: "Media Query ex.",
  link: "fightingtheboss.github.io/media-queries/",
  read: 'Revisit',
  note: "How media queries work through a simple example.",
  shelf: reading_shelf
  )

Book.create!(
  name: "Google Design",
  link: "www.google.com/design/",
  read: 'Revisit',
  note: "This set of guides has a lot of good discussion about how to do animations well.",
  shelf: reading_shelf
  )

Book.create!(
  name: "Dev Tools Use",
  link: "www.smashingmagazine.com/2013/06/10/pinterest-paint-performance-case-study/",
  read: 'Revisit',
  note: "A performance case study of Pinterest done by Addy Osmani, a developer advocate on the Chrome team at Google. Learning how to use the Dev Tools.",
  shelf: reading_shelf
  )

Book.create!(
  name: "Performance Anim",
  link: "www.html5rocks.com/en/tutorials/speed/high-performance-animations/",
  read: 'Revisit',
  note: "A great article on how to achieve high performance animations in apps.",
  shelf: reading_shelf
  )


#-------------------------- My Project ----------------------------------
myProject_shelf = Shelf.create!(
  name: "My Project",
  user: demo_user
  )

Book.create!(
  name: "Github",
  link: "github.com",
  read: 'Revisit',
  note: "Remember to keep commiting :)",
  shelf: myProject_shelf
  )




# #-------------------------- Frameworks ----------------------------------
# frameworks_shelf = Shelf.create!(
#   name: "JS Templates",
#   user: demo_user
#   )







