const inquirer = require('inquirer');
const mysql = require('mysql');
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "E6DQ1mEMG7iU",
    database: "bamazon_db"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log('The connection is good');
    allItems();
    // connection.end();
});
function launch() {
    inquirer.prompt([
        {
            type: 'input',
            name: 'name',
            message: "Which item do you wish to purchase?"
        },
        {
            type: 'input',
            name: 'quantity',
            message: 'How much of this item do you wish to buy?'
        }
    ]).then(function (answer) {
        console.log('Client picked ' + answer.name + '. He wants ' + answer.quantity);
        let desiredItem = answer.name;
        let desiredQuantity = answer.quantity;

        let query2 = 'SELECT * FROM inventory WHERE ?';

        connection.query(query2, { item_id: desiredItem }, function (err, data) {
            if (err) throw err;
            let results = data[0];

            if (desiredQuantity <= results.stock_quantity) {
                console.log('Your puchase has been confirmed');
                let newAmt = results.stock_quantity - desiredQuantity;
                // console.log(newAmt);
                let total = desiredQuantity * results.price;
                let grandT = total+ 5.99;
                console.log(`
                Price: $${total}
                Shipping: $5.99
                Total: ${grandT}
                `)
                let postQuery = `Update inventory SET ? Where ?`
                connection.query(postQuery, [{ stock_quantity: newAmt }, { item_id: desiredItem }], function (err, data) {
                    if (err) throw err;
                    console.log('New quantity set at ' + data.stock_quantity)

                    connection.end();
                })
            }
            else {
                console.log('Sorry we do not have enough of this item.')
                launch();
            }
        })
    })
};

function allItems() {
    let allItem = 'SELECT * from inventory'
    connection.query(allItem, function (err, data) {
        if (err) throw err;
        data.forEach(inventory => {
            console.log(`
            Product Information
            ===============================
            ID: ${inventory.item_id}
            Product Name: ${inventory.product_name}
            Price: ${inventory.price}
            Quantity: ${inventory.stock_quantity}
            `)
        });
        launch();
    })
}