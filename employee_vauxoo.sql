CREATE TABLE employee_department (
    id INTEGER CONSTRAINT em_depkey PRIMARY KEY, 
    name VARCHAR(80), 
    description VARCHAR(200)
);

CREATE TABLE employee (
    id INTEGER CONSTRAINT em_pkey PRIMARY KEY, 
    first_name VARCHAR(40), 
    last_name VARCHAR(40)
);

ALTER TABLE employee
ADD COLUMN dep_id INTEGER;

ALTER TABLE employee 
ADD CONSTRAINT em_fkey FOREIGN KEY (dep_id) REFERENCES employee_department (id);

INSERT INTO employee_department VALUES
(1, 'Human Resource', 'Human resource is the most important asset in the business. The heart of an organization lies on its people. ');
INSERT INTO employee_department VALUES
(2, 'Marketing', 'Promotional activities and advertising are the best ways to communicate with your target customers for them to be able to know the company’s products and services.');
INSERT INTO employee_department VALUES
(3, 'Production', 'The production department is concerned with manufacturing the products, where inputs (raw materials) are converted into finished output through a series of production process. ');
INSERT INTO employee_department VALUES
(4, 'Sales', 'The sales department is responsible for generating revenue. ');
INSERT INTO employee_department VALUES
(5, 'Account And Finance', 'It is important to manage the business’ cash outflows and inflows.');
INSERT INTO employee_department VALUES
(6, 'Managment', 'The administrative and management’s function is to handle the business, planning, decision-making, and also financial review. ');

INSERT INTO employee VALUES
(1, 'James', 'Smith', 2);
INSERT INTO employee VALUES
(2, 'John', 'Brown', 5);
INSERT INTO employee VALUES
(3, 'Michael', 'Davis', 4);
INSERT INTO employee VALUES
(4, 'Chloe', 'Johnson', 6);
