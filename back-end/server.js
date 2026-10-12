const express = require('express');
const cors = require('cors');
const app = express();

app.use(express.json());
app.use(cors());

// Temporary in-memory user list
const users = [];

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

// Start server (uses Render's assigned port, or port 3000 locally)
const PORT = process.env.PORT || 3000;
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server running on port ${PORT}`);
});