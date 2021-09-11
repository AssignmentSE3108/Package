const express = require('express')
const router = express.Router()

const mainController = require('../app/controllers/MainController')

router.use('/:slug', mainController.show)
router.use('/', mainController.index)

module.exports = router