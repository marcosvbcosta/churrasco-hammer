class Data {
  //employers
  static const employer1 = {
    'id': '11111111111',
    'name': 'João Lemos',
    'isManagement': true,
  };

  static const employer2 = {
    'id': '22222222222',
    'name': 'Alex Costa',
    'isManagement': false,
  };

  static const employers = [
    employer1,
    employer2,
  ];

  //events
  static const event1 = {
    'id': '1',
    'name': 'Churrasco da Hammet de 2019',
    'management': '11111111111',
    'date': '25/12/2019',
  };

  static const event2 = {
    'id': '2',
    'name': 'Churrasco da Hammet de 2020',
    'management': '11111111111',
    'date': '25/12/2020',
  };

  static const events = [
    event1,
    event2,
  ];

  //guests
  static const guest1 = {
    'employer': '22222222222',
    'event': '2',
    'name': 'Maria',
  };

  static const guest2 = {
    'employer': '11111111111',
    'event': '2',
    'name': 'Joana',
  };

  static const guests_event1 = [];

  static const guests_event2 = [
    guest1,
    guest2,
  ];

  //events + employers
  static const event_employer1 = {
    'employer': '11111111111',
    'event': '1',
    'presence': false,
    'hasGuest': false,
  };

  static const event_employer2 = {
    'employer': '22222222222',
    'event': '1',
    'presence': false,
    'hasGuest': false,
  };

  static const event_employer3 = {
    'employer': '11111111111',
    'event': '2',
    'presence': true,
    'hasGuest': true,
    'drink': true,
    'drinkGuest': false,
    'payment': 30,
  };

  static const event_employer4 = {
    'employer': '22222222222',
    'event': '2',
    'presence': true,
    'hasGuest': true,
    'drink': false,
    'drinkGuest': true,
    'payment': 30,
  };

  static const event1_employer = [
    event_employer1,
    event_employer2,
  ];

  static const event2_employer = [
    event_employer3,
    event_employer4,
  ];
}
