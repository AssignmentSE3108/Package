const Foods = require('../models/Food')
const { mutipleMongooToOpject } = require('../../unti/mongoose')

class SiteController {
    //[GET] /
    home(req, res, next) {

        Foods.find({})
            .then(foods => {
                res.render('home', {
                    foods: mutipleMongooToOpject(foods)
                })
            }
            )
            .catch(next)
        //res.render('home');
    }

    //[GET] /search
    search(req, res) {
        res.render('search');
    }

    menu(req, res) {
        res.render('menu')
    }
}

module.exports = new SiteController
