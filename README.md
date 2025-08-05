# Multi-DB Project

Este proyecto levanta un entorno multibase de datos usando Docker Compose con los siguientes motores:

- **MySQL 5.7**
- **PostgreSQL 14**
- **SQL Server 2022**

Cada motor crea y llena múltiples bases de datos independientes, simulando un escenario multicliente. Ideal para pruebas de integración, ETL, dashboards o pipelines de datos distribuidos.

---

## ⚙️ Requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Git](https://git-scm.com/)

---

## 🚀 Configuración inicial

### 1. Clonar el repositorio

```bash
git clone https://github.com/tuusuario/multi-bd-project.git
cd multi-bd-project
```

### 2. Renombra el archivo `.env.template` a `.env`

Este proyecto utiliza variables de entorno para configurar los puertos y credenciales de las bases de datos.

Copia el archivo de plantilla:

```bash
cp .env.template .env
```

Luego edita `.env` y define los valores de acuerdo con tu entorno. Por ejemplo:

```env
MYSQL_PORT=3307
MYSQL_ROOT_PASSWORD=my-secret

POSTGRES_PORT=5433
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgrespw

MSSQL_PORT=1433
MSSQL_SA_PASSWORD=YourStrong!Passw0rd
```

---

### 3. Verificar puertos disponibles

Antes de levantar los servicios, asegúrate de que los puertos que definiste estén **libres** en tu máquina:

#### Windows (PowerShell)

```powershell
netstat -ano | findstr :3306
netstat -ano | findstr :5432
netstat -ano | findstr :1433
```

#### Linux/macOS

```bash
lsof -i :3306
lsof -i :5432
lsof -i :1433
```

Si algún puerto ya está en uso, cambia el valor en `.env` (ej. `5432` → `5433`).

---

## 🧱 Estructura del proyecto

```
.
├── docker-compose.yml
├── .env.template
├── init/
│   ├── mysql/
│   │   └── init.sql            # Crea y llena empresa1_db1, empresa2_db1, empresa2_db2
│   ├── postgres/
│   │   └── init.sql            # Crea y llena empresa3_db1, empresa4_db1
│   └── mssql/
│       └── init.sql            # Crea y llena empresa5_db1, empresa5_db2, empresa6_db1
```

---

## ▶️ Ejecutar el entorno

Con los puertos libres y el `.env` configurado, levanta todo con:

```bash
docker-compose up -d
```

Esto creará contenedores con sus bases de datos preconfiguradas y cargadas con datos realistas de KPIs y departamentos para cada empresa.

---

## 📌 Notas

- El archivo `.env.template` está incluido para que puedas compartir este proyecto sin exponer tus credenciales.
- `.env` está en `.gitignore` para evitar que se suba por error.
- Las bases de datos son destruidas si eliminas los volúmenes. Para preservar los datos, crea backups o monta volúmenes persistentes personalizados.

---

## 📫 Contacto

> Proyecto creado como base de pruebas para escenarios multicliente con diferentes motores de base de datos.  
> Desarrollado por CAMPOS BUENO DIEGO – 2025
