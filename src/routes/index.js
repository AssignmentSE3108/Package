const mainRouter = require('./main')
const siteRouter = require('./site')
const foodRouter = require('./food')

function route(app) {
    app.use('/main', mainRouter)
    app.use('/', siteRouter)
    app.use('/foods', foodRouter)

    app.get('/main/sub', (req, res) => {
        res.send('Hello World!, this is not main \n this is sub main')
    })
    /*
        app.get('/main', (req, res) => {
            res.send('Hello World!, this is Main')
        })
    */

}

module.exports = route
