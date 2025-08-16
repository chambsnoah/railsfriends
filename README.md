# Rails Friends

A simple Ruby on Rails application for managing your personal contacts and friends list.

See the live demo: https://railsfriends-0q8e.onrender.com

## Features

- **User Authentication**: Secure user registration and login powered by Devise
- **Friend Management**: Full CRUD operations for managing friend contacts
- **Personal Contact Book**: Each user can manage their own private list of friends
- **Contact Information**: Store names, email addresses, phone numbers, and Twitter handles
- **Responsive Design**: Bootstrap-styled interface that works on desktop and mobile
- **User Authorization**: Users can only view, edit, and delete their own friend entries

## Technical Stack

- **Ruby on Rails 8.0.2**
- **SQLite3** database
- **Devise** for user authentication
- **Bootstrap 5.3.3** for responsive UI
- **Turbo & Stimulus** for modern JavaScript interactions
- **Importmap** for JavaScript module management

## Getting Started

1. Clone the repository
2. Run `bundle install` to install dependencies
3. Run `rails db:create db:migrate` to set up the database
4. Run `rails server` to start the application
5. Visit `http://localhost:3000` and create an account to start managing your friends list

## Models

- **User**: Handles authentication and has many friends
- **Friend**: Belongs to a user, stores contact information (first_name, last_name, email, phone, twitter)
