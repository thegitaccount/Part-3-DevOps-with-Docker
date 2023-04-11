const express = require('express')
const app = express()

app.get('/', (req, res) => {
  res.send('<h1>Hello World! Watchtower seems to be working as intended!</h1>')
})

const PORT = 8080

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})