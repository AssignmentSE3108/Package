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
    account(req, res) {
        res.render('account');
    }

    menu(req, res) {
        res.render('menu')
    }
}

module.exports = new SiteController
