const mainController = require('./main')
const siteRouter = require('./site')

function route(app) {
    app.use('/main', mainController)
    app.use('/', siteRouter)

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
