
CREATE DATABASE empresa5_db1;
GO
USE empresa5_db1;
GO
CREATE TABLE kpis (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    target_value FLOAT,
    current_value FLOAT,
    created_at DATETIME DEFAULT GETDATE()
);
CREATE TABLE departments (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE department_kpis (
    department_id INT,
    kpi_id INT,
    assigned_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (kpi_id) REFERENCES kpis(id)
);
INSERT INTO departments (name) VALUES
('Field Ops'), ('Inventory'), ('Administration'), ('Tech Support'), ('Research');
INSERT INTO kpis (name, description, target_value, current_value) VALUES
('Repair Turnaround', 'Avg hours to complete field service', 72.0, 80.5),
('Stock Accuracy', 'Inventory match %', 98.0, 95.5),
('Expense Ratio', 'OpEx vs Revenue', 20.0, 23.0),
('Resolution Time', 'Customer issue resolution', 24.0, 30.0),
('Prototype Cycle', 'Average prototype iteration time', 14.0, 18.0);
INSERT INTO department_kpis (department_id, kpi_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);
GO

CREATE DATABASE empresa5_db2;
GO
USE empresa5_db2;
GO
-- Repetimos estructura con nuevos datos
CREATE TABLE kpis (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    target_value FLOAT,
    current_value FLOAT,
    created_at DATETIME DEFAULT GETDATE()
);
CREATE TABLE departments (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE department_kpis (
    department_id INT,
    kpi_id INT,
    assigned_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (kpi_id) REFERENCES kpis(id)
);
INSERT INTO departments (name) VALUES
('Marketing'), ('Legal'), ('Accounting'), ('Facilities'), ('Customer Success');
INSERT INTO kpis (name, description, target_value, current_value) VALUES
('Brand Awareness', 'Survey-based brand reach', 85.0, 78.5),
('Legal Risks', 'Number of outstanding legal risks', 0.0, 1.0),
('Invoice Cycle Time', 'Average invoice processing time', 10.0, 12.5),
('Maintenance SLA', 'Facility repair SLA compliance', 95.0, 91.0),
('NPS Feedback', 'Avg satisfaction on support tickets', 4.5, 4.0);
INSERT INTO department_kpis (department_id, kpi_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);
GO

CREATE DATABASE empresa6_db1;
GO
USE empresa6_db1;
GO
-- Nuevos datos para nueva empresa
CREATE TABLE kpis (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    target_value FLOAT,
    current_value FLOAT,
    created_at DATETIME DEFAULT GETDATE()
);
CREATE TABLE departments (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE department_kpis (
    department_id INT,
    kpi_id INT,
    assigned_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (kpi_id) REFERENCES kpis(id)
);
INSERT INTO departments (name) VALUES
('Analytics'), ('Legal Compliance'), ('User Experience'), ('Delivery'), ('Training');
INSERT INTO kpis (name, description, target_value, current_value) VALUES
('Insights Delivered', 'Monthly reports generated', 10.0, 12.0),
('Policy Violations', 'Reported compliance issues', 0.0, 0.5),
('UX Score', 'User interface satisfaction', 90.0, 88.0),
('Avg Delivery Cost', 'Cost per delivery', 15.0, 18.5),
('Training Engagement', 'Participation % in training', 85.0, 80.0);
INSERT INTO department_kpis (department_id, kpi_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);
GO
