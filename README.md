# Product Manager

[![CI](https://github.com/leandrocunha526/project-manager-rails/actions/workflows/ci.yml/badge.svg)](https://github.com/leandrocunha526/project-manager-rails/actions/workflows/ci.yml)

## Overview

Product Manager is a web application designed to help users manage their products efficiently. Users can create, view, edit, and delete products with ease.

- Project designed for the practice of automated tests with Capybara.

## Features

- **Create Products**: Add new products with name, description, and price.
- **View Products**: Browse through the list of products.
- **Edit Products**: Update existing product details.
- **Delete Products**: Remove products from the list.

- All features tested and 100% coverage.

## Technologies Used

- **Ruby on Rails**: The web framework used for building the application.
- **PostgreSQL**: The database management system for storing product data.
- **RSpec**: Testing framework for Ruby applications.
- **Capybara**: Tool for feature testing in web applications.
- ***Bootstrap***:  Bootstrap is a popular front-end framework for developing responsive and mobile-first web applications. It provides a collection of CSS and JavaScript components that make it easy to design and customize web pages.
- ***Simple form***: Simple Form aims to be as flexible as possible while helping you with powerful components to create your forms.
- ***SACSS***: SCSS (Sassy CSS) is a preprocessor scripting language that is interpreted or compiled into Cascading Style Sheets (CSS).

## Getting Started

### Prerequisites

Make sure you have the following installed:

- **Ruby** (version 3.2.5 or higher)
- **Rails** (version 7.2.1 or higher)
- **PostgreSQL** (version 14 or higher)

### Installation

1. **Clone the repository**:

```bash
git clone https://github.com/leandrocunha526/product-manager-rails.git
cd product-manager-rails
```

2. Install the required gems:

```bash
bundle install
```

3. Set up the database:

```bash
rails db:create
rails db:migrate
```

4. Running tests

```bash
bundle exec rspec
```

5. Running server

```bash
rails s
```

# LICENSE
See [LICENSE.md](LICENSE.md)
