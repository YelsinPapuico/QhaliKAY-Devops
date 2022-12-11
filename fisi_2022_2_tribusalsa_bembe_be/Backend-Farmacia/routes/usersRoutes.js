const UsersController = require('../controllers/usersController');

module.exports = (app, upload) => {

    app.get('/api/users/getAll', UsersController.getAll);
    
}