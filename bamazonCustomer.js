var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "Bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  // runSearch();
});

console.log("Current Stock:")
connection.query('SELECT * FROM Products', function(err, Products, product_name){ 
    console.log(Products);
});


var buy = function() {
	connection.query('SELECT * FROM Products', function(err, res) {
		var choiceArray = [];
		for (var i = 0; i < res.length; i++) {
			choiceArray.push(res[i].product_name);
		}
		inquirer.prompt([{
			name: 'item',
			type: 'input',
			message: 'Which item would you like to purchase? (Enter the Item ID)'
		},
		{
			name: 'quantity',
			type: 'input',
			message: 'How many?'
		}]).then(function(answer) {
			console.log(answer);
			var id = answer.item;
			console.log(id);
			var chosenItem = res[id-1];
			console.log(chosenItem);
			var newQuantity = chosenItem.stock_quantity - answer.quantity;
			if (newQuantity >= 0) {
				connection.query('UPDATE products SET ? WHERE id = ?', [{ stock_quantity: newQuantity }, id]);
				buy();
			} else {
				console.log('There are not enough stock to complete your purchase.');
				buy();
			}
		})
	})
}
buy()