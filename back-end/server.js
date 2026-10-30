const express = require('express');
const cors = require('cors');
const app = express();

app.use(express.json());
app.use(cors());

// Temporary in-memory user list
const users = [];

// Home route
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

// Login Endpoint
app.post('/login', (req, res) => {
  const { email, password } = req.body;

  const user = users.find(u => u.email === email && u.password === password);
  if (!user) {
    return res.status(400).json({ success: false, message: 'Invalid email or password' });
  }

  console.log('User logged in:', email);
  return res.json({ success: true, message: 'Login successful!' });
});

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server running on port ${PORT}`);
});