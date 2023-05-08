-- Products table filling
insert into products (id, title, description, price) values
(uuid_generate_v4(), 'coke', 'cold drink +',  10),
(uuid_generate_v4(), 'pepsi', 'cold drink ++', 20);

-- Users table filling
insert into users (id, name, password) values
(uuid_generate_v4(), 'sjoshi', 'tedst123'),
(uuid_generate_v4(), 'kdivakaran', 'zest');

-- Carts table filling
insert into carts (user_id, created_at, updated_at, status) values
('c50094e1-a78a-4942-ba71-20551b596732', '2023-03-30', '2023-03-31', 'ORDERED'),
('4f02b169-2173-4d55-960f-21e67c3b4e19', '2023-03-31', '2023-04-01', 'OPEN'),
('4f02b169-2173-4d55-960f-21e67c3b4e19', '2023-04-01', '2023-04-01', 'OPEN');

-- Cart items table filling
-- Note: product_id should be taken on existing DB: DynamoDB or PostgreSQL depending on which in use right now.
insert into cart_items (cart_id, product_id, count) values
('1e2a8d17-890d-407d-aef0-14bc31cb0832', uuid_generate_v4(), 1),
('2252102e-4dba-4eb4-bdb6-99133764fd4c', uuid_generate_v4(), 10),
('b2b9d29a-5c13-451f-9548-2ea0d7d5c123', uuid_generate_v4(), 2),
('798c8eea-00be-4e16-875c-0b49ea21e376', uuid_generate_v4(), 3);


