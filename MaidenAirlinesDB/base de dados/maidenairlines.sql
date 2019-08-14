
CREATE TABLE `airplane` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(100) NOT NULL,
  `cargo_hold_capacity` int(11) NOT NULL,
  `number_seats` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
CREATE TABLE `backoffice` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
CREATE TABLE `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `id_booking_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
CREATE TABLE `booking_client_flight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_booking` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_flight` int(11) NOT NULL,
  `seat` varchar(100) NOT NULL,
  `check_in` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
CREATE TABLE `booking_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `hand_baggage` tinyint(1) NOT NULL,
  `checked_baggage` tinyint(1) NOT NULL,
  `change_date` tinyint(1) NOT NULL,
  `cancel_booking` tinyint(1) NOT NULL,
  `cost` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `vat` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `number_miles` varchar(100) NOT NULL,
  `id_type_client` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
CREATE TABLE `client_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `annual_fee` float NOT NULL,
  `monthly_miles` int(11) NOT NULL,
  `welcome_bonus` int(11) NOT NULL,
  `bonus_miles` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `departure_date` datetime NOT NULL,
  `arrival_date` datetime NOT NULL,
  `departure_airport` int(11) NOT NULL,
  `arrival_airport` int(11) NOT NULL,
  `id_airplane` int(11) NOT NULL,
  `flight_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `vat` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `contact_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1