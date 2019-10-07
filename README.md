# Bookmark Challenge README

## User Story 1
As a user,
So I can visit my favourite websites,
I want to see a list of my bookmarks in a Bookmark Manager.

### Domain Mapping
| bookmarks | <-- display -->

Database --> Model layer --> Control Layer --> View layer
View = homepage to show list of bookmarks, erb :bookmarks 
Controller = contains the different paths - class Bookmarks and app.rb file
Model = interacts with the database and contains Ruby code - class Bookmark
