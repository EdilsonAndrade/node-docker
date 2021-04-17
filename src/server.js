import express from 'express'

const server = express();

server.use(express.json())
server.get('/teste',(req, res)=>{
    return res.json('Muito da hora docker')
})

const port= "3003"
server.listen(port, ()=>{
    console.log(`Server listen at port ${port}`)
})