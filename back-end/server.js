const express = require('express');
const cors = require('cors');
const app = express();

app.use(express.json());
app.use(cors());

// Temporary in-memory user list
const users = [];


// 👉 Add this home route so visiting the URL in a browser looks nice
app.get('/', (req, res) => {
  res.send('Backend server is up and running!');
});

// Register Endpoint
app.post('/register', (req, res) => {
  const { name, email, password } = req.body;

  const existingUser = users.find(u => u.email === email);
  if (existingUser) {
    return res.status(400).json({ success: false, message: 'Email already registered' });
  }

  users.push({ name, email, password });
  console.log('User registered:', email);
  return res.json({ success: true, message: 'Registration successful!' });
});

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server running on port ${PORT}`);
});