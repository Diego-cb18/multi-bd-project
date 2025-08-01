
CREATE DATABASE empresa3_db1;
\c empresa3_db1;

CREATE TABLE kpis (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    target_value FLOAT,
    current_value FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
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
('Engineering'), ('Analytics'), ('QA'), ('Security'), ('Compliance');
INSERT INTO kpis (name, description, target_value, current_value) VALUES
('Uptime', 'System uptime percentage', 99.9, 99.7),
('Defect Rate', 'Number of bugs per release', 3.0, 4.2),
('Patch Time', 'Average patch deployment time', 48.0, 60.0),
('Vulnerability Count', 'Security issues per scan', 0.0, 2.0),
('Audit Pass Rate', 'Compliance audit pass %', 100.0, 96.5);
INSERT INTO department_kpis (department_id, kpi_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

CREATE DATABASE empresa4_db1;
\c empresa4_db1;

CREATE TABLE kpis (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    target_value FLOAT,
    current_value FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
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
('Strategy'), ('Customer Experience'), ('IT'), ('HR'), ('Procurement');
INSERT INTO kpis (name, description, target_value, current_value) VALUES
('Project Delivery', 'On-time project completion', 95.0, 90.0),
('Customer NPS', 'Net Promoter Score', 75.0, 70.5),
('System Downtime', 'Hours of system downtime', 2.0, 3.5),
('Hiring Success Rate', 'Hires meeting 6-month goals', 90.0, 85.0),
('Cost Savings', 'Annual budget savings (%)', 15.0, 12.3);
INSERT INTO department_kpis (department_id, kpi_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);
