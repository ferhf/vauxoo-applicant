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


    CREATE TABLE employee_hobby (
        id INTEGER CONSTRAINT em_hopkey PRIMARY KEY, 
        name VARCHAR(80), 
        description VARCHAR(200)
    );

    CREATE TABLE employee_hobby_employee (
        id_employee INTEGER REFERENCES employee (id), 
        id_hobby INTEGER REFERENCES employee_hobby (id) ON DELETE RESTRICT
    );

    INSERT INTO employee_hobby VALUES
    (1, 'Ver peliculas', 'Ver peliculas en línea.');
    INSERT INTO employee_hobby VALUES
    (2, 'Jugar videojuegos', 'Jugar con consola, en celular o computadora en o fuera de linea.');
    INSERT INTO employee_hobby VALUES
    (3, 'Caminar', 'Salir y disfrutar del camino.');

    INSERT INTO employee_hobby_employee VALUES
    (1, 1);
    INSERT INTO employee_hobby_employee VALUES
    (1, 3);
    INSERT INTO employee_hobby_employee VALUES
    (2, 2);
    INSERT INTO employee_hobby_employee VALUES
    (2, 3);
    INSERT INTO employee_hobby_employee VALUES
    (3, 1);
    INSERT INTO employee_hobby_employee VALUES
    (3, 2);
    INSERT INTO employee_hobby_employee VALUES
    (4, 1);
    INSERT INTO employee_hobby_employee VALUES
    (4, 2);

    ----Se crea la tabla positions, para guardar los puestos.

    CREATE TABLE positions (
        id INTEGER CONSTRAINT po_key PRIMARY KEY, 
        name VARCHAR(25), 
        description VARCHAR(100)
    );

    ----Se guardan registros en la tabla positions.

    INSERT INTO positions VALUES
    (1, 'Sales Manager', ' Description of position');
    INSERT INTO positions VALUES
    (2, 'Account Manager', ' Description of position');
    INSERT INTO positions VALUES
    (3, 'Sales Agent', ' Description of position');
    INSERT INTO positions VALUES
    (4, 'Accounting Assistant ', ' Description of position');
    INSERT INTO positions VALUES
    (5, 'CEO Assistant ', ' Description of position');
    INSERT INTO positions VALUES
    (6, 'CEO', ' Description of position');

    ----Se agrega campo para guardar el puesto del empleado y otro para identificar jefe del empleado.

    ALTER TABLE employee
    ADD COLUMN position_id INTEGER,
    ADD COLUMN manager_id INTEGER;

    ALTER TABLE employee 
    ADD CONSTRAINT emm_fkey FOREIGN KEY (manager_id) REFERENCES employee (id);

    ----Se actualiza el campo de position en los campos existentes.

    UPDATE employee SET position_id = 1
    WHERE id = 1;
    UPDATE employee SET position_id = 2
    WHERE id = 2;
    UPDATE employee SET position_id = 3
    WHERE id = 3;
    UPDATE employee SET position_id = 4
    WHERE id = 4;

    ----Se agregan dos registros de empleado.

    INSERT INTO employee VALUES
    (5, 'Thomas', 'Sanders', 6, 5, 1);
    INSERT INTO employee VALUES
    (6, 'Jane', 'Anderson', 6, 6, 1);

    UPDATE employee
    SET manager_id = 6
    WHERE id = 5 OR id = 6;

    ----Se actualiza el campo de jefe en los primeros 4 registros.

    UPDATE employee SET manager_id = 6
    WHERE id = 1 OR id = 2;
    UPDATE employee SET manager_id = 1
    WHERE id = 3;
    UPDATE employee SET manager_id = 2
    WHERE id = 4;





