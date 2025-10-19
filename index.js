import express from 'express'

const app = express()
const port = 8000

app.listen(port, () => {
    console.log(`App running on port: ${port}`)
})

app.get('/', (req, res) => {
    res.send({ message: "Welcome from Backend!" })
})

app.get('/health', (req, res) => {
    res.send({ message: "Backend is working fine" })
})