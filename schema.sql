create table person (
  id serial PRIMARY KEY,
  name varchar(255),
  experience int,
  has_privileges boolean,
  status varchar(50)
);


create table service (
  id serial PRIMARY KEY,
  name varchar(255),
  description text,
  is_available boolean
);


create table requests (
  id serial PRIMARY KEY,
  person_id int references person(id),
  service_id int references service(id),
  status varchar(50),
  created_at date,
  approved_at date
);

create table payments (
  id serial PRIMARY KEY,
  request_id int references requests(id),
  amount decimal(10, 2),
  payment_date date,
  purpose text
);
