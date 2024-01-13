// -------------------------------------------Project #1--------------------------------------------------

// Dear Sir, 
// Hope you doing well.
// Muhammad Qadir,

class MenuItem {
  String name;
  double price;

  MenuItem(this.name, this.price);
}

class OrderItem {
  MenuItem menuItem;
  int quantity;

  OrderItem(this.menuItem, this.quantity);
}

class Table {
  int number;
  List<OrderItem> orders = [];

  Table(this.number);

  double calculateBill() {
    return orders.fold(0, (acc, orderItem) => acc + orderItem.menuItem.price * orderItem.quantity);
  }
}

class Restaurant {
  List<MenuItem> menu = [];
  List<Table> tables = [];

  void addMenuItem(String name, double price) => menu.add(MenuItem(name, price));

  void displayMenu() => menu.asMap().forEach((index, item) => print("${index + 1}. ${item.name} - \$${item.price}"));

  void displayTables() => tables.forEach((table) => print("Table ${table.number}: \$${table.calculateBill()}"));

  Table getTable(int tableNumber) => tables.firstWhere((table) => table.number == tableNumber, orElse: () => null);
}

  void takeOrder(int tableNumber) {
    var table = getTable(tableNumber);
  }
    if (table != null) {
      displayMenu();
      stdout.write("Enter the menu item number: ");
      int itemNumber = int.parse(stdin.readLineSync());

      stdout.write("Enter the quantity: ");
      int quantity = int.parse(stdin.readLineSync());
    }
      if (itemNumber >= 1 && itemNumber <= menu.length && quantity > 0) {
        OrderItem orderItem = OrderItem(menu[itemNumber - 1], quantity);
        table.orders.add(orderItem);
        print"Order added for Table $tableNumber: ${orderItem.quantity} x
      }


      // Best regard.