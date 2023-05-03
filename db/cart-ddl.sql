create EXTENSION if not exists "uuid-ossp";

DROP TABLE if exists carts
CREATE TYPE cartstatus AS ENUM ('OPEN', 'ORDERED');
create table carts (
	id uuid not null default uuid_generate_v4() primary key,
	user_id uuid not null,
	created_at date not null,
	updated_at date not null,
	status cartstatus
)

DROP TABLE if exists cart_items
create table cart_items (
	cart_id uuid references carts(id),
	product_id uuid,
	count integer
)