class EmployeeEvent {
  final String idEmployee;
  final String idEvent;
  final bool presence;
  final bool withDrink;
  final bool hasGuest;
  final String name;
  final bool withDrinkGuest;
  final bool paymentStatus;
  final double total;

  EmployeeEvent(
    this.idEmployee,
    this.idEvent,
    this.presence,
    this.withDrink,
    this.hasGuest,
    this.name,
    this.withDrinkGuest,
    this.paymentStatus,
    this.total,
  );
}
