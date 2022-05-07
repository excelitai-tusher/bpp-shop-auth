class Order{
  String? OrderId;
  String? date;
  String? status;

  Order({this.OrderId, this.date,this.status});

  static List<Order> list=[
    Order(
      OrderId: "6941236",
      date: "Apr 1, 2022",
      status: "Cancelled"
    ),
    Order(
      OrderId: "6941236",
      date: "Mar 25, 2022",
      status: "Complete"

    ),
    Order(
      OrderId: "6941236",
      date: "Mar 20, 2022",
      status: "Complete"

    ),
    Order(
      OrderId: "6941236",
      date: "Mar 10, 2022",
      status: "Cancelled"
    ),
    Order(
        OrderId: "6941236",
        date: "Mar 10, 2022",
        status: "Cancelled"
    ),
  ];
}