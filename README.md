# 📚 Book Lending Library

A simple Book Lending Library application built with **Ruby on Rails 8** that allows users to browse books, borrow them, and manage their borrowed books.

---

## 🚀 Features

- User authentication using **Devise**
- Browse available books
- Borrow and return books
- User profile page with borrowing history
- Bootstrap-powered UI

---

## 📥 Installation & Setup

### **1. Clone the repository**

```sh
git clone https://github.com/AllanMuhari/artisans_prep
cd book-library
```

### **2. Install dependencies**

Ensure you have **Ruby 3.3** and **Rails 8** installed, then run:

```sh
bundle install
```

### **3. Setup the database**

```sh
rails db:create db:migrate db:seed
```

### **4. Start the server**

```sh
rails server
```

Visit `http://127.0.0.1:3000` in your browser.

---

## 🔑 Authentication

This project uses **Devise** for user authentication.

- Sign up or log in to borrow books.
- To log out, use the **Logout** button in the navigation bar.

---

## 📜 Routes

| Route            | Description               |
| ---------------- | ------------------------- |
| `/`              | Home (List of Books)      |
| `/books/:id`     | Show Book Details         |
| `/profile`       | User Profile & Borrowings |
| `/users/sign_up` | User Registration         |
| `/users/sign_in` | User Login                |

---

## 🛠️ Troubleshooting

- If you encounter **"No route matches [GET] /users/sign_out"**, ensure you use the correct logout link:
  ```erb
  <%= link_to "Logout", destroy_user_session_path, method: :delete, class: "nav-link" %>
  ```
- If assets (CSS/JS) are not loading, precompile them:
  ```sh
  rails assets:precompile
  ```

---

## 🤝 Contributing

Feel free to fork this repository and submit a pull request with improvements!

---

Happy coding! 🚀
