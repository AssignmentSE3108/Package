class MainController {
    //[GET] /main
    index(req, res) {
        res.send('Hello World!, this is Main in controller')
    }

    //[GET] /main/:slug
    show(req, res) {
        res.send("Some thing detail about main")
    }
}

module.exports = new MainController
