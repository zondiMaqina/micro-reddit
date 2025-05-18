# micro Reddit

# Development

The application is based on associations between models, interacting with the database as records are saved or deleted from database
No views are included for the application

## Models

1. [User model](./app/models/user.rb)
- Model for keeping data for user identity

2. [Post modek](./app/models/post.rb)
- Model for keeping track for post's details, associated with the user model

3. [Comment model](./app/models/comment.rb)
- Model for keeping details of user's comment, it is associated with the post and user model (optionally)
