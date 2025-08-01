
CREATE DATABASE IF NOT EXISTS empresa1_db1;
USE empresa1_db1;

CREATE TABLE kpis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    target_value FLOAT,
    current_value FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE department_kpis (
    department_id INT,
    kpi_id INT,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (kpi_id) REFERENCES kpis(id)
);

INSERT INTO departments (name) VALUES
('Product'),
('Finance'),
('People Operations'),
('R&D'),
('Legal');

INSERT INTO kpis (name, description, target_value, current_value) VALUES
('Delivery Time', 'Track average delivery time', 48.0, 55.2),
('Gross Margin', 'Monitor profitability margins', 60.0, 58.1),
('Innovation Rate', 'Ratio of new features developed', 25.0, 20.5),
('Training Hours', 'Avg hours of training per employee', 40.0, 32.0),
('Legal Incidents', 'Number of legal cases handled', 2.0, 3.0);

INSERT INTO department_kpis (department_id, kpi_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

CREATE DATABASE IF NOT EXISTS empresa2_db1;
USE empresa2_db1;

CREATE TABLE kpis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    target_value FLOAT,
    current_value FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE department_kpis (
    department_id INT,
    kpi_id INT,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (kpi_id) REFERENCES kpis(id)
);

INSERT INTO departments (name) VALUES
('Sales'),
('Support'),
('Development'),
('HR'),
('Management');

INSERT INTO kpis (name, description, target_value, current_value) VALUES
('Churn Rate', 'Customer loss rate', 5.0, 6.8),
('Bug Fix Time', 'Time to resolve software bugs', 72.0, 80.5),
('Hiring Speed', 'Avg days to hire', 30.0, 35.0),
('Revenue per Employee', 'Efficiency per person', 100000.0, 95000.0),
('Support Satisfaction', 'Support team CSAT', 90.0, 87.0);

INSERT INTO department_kpis (department_id, kpi_id) VALUES
(1, 1), (2, 5), (3, 2), (4, 3), (5, 4);

CREATE DATABASE IF NOT EXISTS empresa2_db2;
USE empresa2_db2;

CREATE TABLE kpis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    target_value FLOAT,
    current_value FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE department_kpis (
    department_id INT,
    kpi_id INT,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (kpi_id) REFERENCES kpis(id)
);

INSERT INTO departments (name) VALUES
('Customer Service'),
('Logistics'),
('Data'),
('Engineering'),
('Accounting');

INSERT INTO kpis (name, description, target_value, current_value) VALUES
('Response SLA', 'Time to first customer reply', 1.0, 1.2),
('Delivery Accuracy', 'Percentage of on-time deliveries', 99.0, 97.5),
('Data Availability', 'Uptime of data pipelines', 99.9, 99.6),
('Incident Rate', 'Reported incidents per 1000 users', 0.5, 0.7),
('Invoice Accuracy', 'Correctly issued invoices', 98.5, 97.2);

INSERT INTO department_kpis (department_id, kpi_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);
