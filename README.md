# APIs with Azure Functions & Azure API Management (API Gateway)

A production-ready starter project demonstrating how to build REST APIs using **Azure Functions (.NET 8 Isolated Worker)** and expose them securely through **Azure API Management (APIM)** as an API Gateway.

---

## Overview

This project shows how to:

- Build serverless REST APIs with Azure Functions
- Expose APIs through Azure API Management
- Implement scalable and event-driven architecture
- Deploy infrastructure using Bicep
- Secure APIs using Function Keys or Azure AD
- Prepare APIs for production deployment

---

## Architecture

```text
                +----------------------+
                |      API Client      |
                | (Web / Mobile / App) |
                +----------+-----------+
                           |
                           |
                    HTTPS Request
                           |
                           ▼
              +--------------------------+
              | Azure API Management     |
              | (API Gateway)            |
              +------------+-------------+
                           |
               Authentication
               Rate Limiting
               Caching
               Logging
               Routing
                           |
                           ▼
              +--------------------------+
              | Azure Function App       |
              | (.NET 8 Isolated Worker) |
              +------------+-------------+
                           |
                     Business Logic
                           |
                           ▼
      +----------------------------------------+
      | Azure SQL | Cosmos DB | Storage | Redis|
      +----------------------------------------+
```

---

# Features

- Azure Functions (.NET 8 Isolated Worker)
- Azure API Management (API Gateway)
- REST API implementation
- Dependency Injection
- Infrastructure as Code (Bicep)
- Local development support
- Secure API endpoints
- Scalable serverless architecture
- Ready for CI/CD deployment

---

# Tech Stack

- .NET 8
- Azure Functions v4
- Azure API Management
- Azure Storage Account
- Bicep
- REST APIs
- C#

---

# Project Structure

```
APIs-with-Azure-Function-API-Gateway
│
├── src
│   ├── FunctionApp
│   │   ├── Functions
│   │   ├── Models
│   │   ├── Program.cs
│   │   ├── host.json
│   │   └── local.settings.json
│   │
│   └── Infrastructure
│       └── bicep
│
├── docs
│
├── README.md
│
└── .gitignore
```

---

# API Endpoints

## Hello API

```
GET /api/Hello
```

Response

```json
{
  "message": "Hello from Azure Functions!"
}
```

---

## Products API

```
GET /api/products
```

Response

```json
[
  {
    "id": 1,
    "name": "Laptop",
    "price": 75000
  },
  {
    "id": 2,
    "name": "Phone",
    "price": 35000
  }
]
```

---

# Local Development

## Prerequisites

- .NET 8 SDK
- Azure Functions Core Tools v4
- Azure CLI
- Visual Studio 2022 or VS Code

---

## Clone Repository

```bash
git clone https://github.com/your-username/APIs-with-Azure-Function-API-Gateway.git

cd APIs-with-Azure-Function-API-Gateway
```

---

## Restore Packages

```bash
dotnet restore
```

---

## Run the Function App

```bash
func start
```

The APIs will be available at:

```
http://localhost:7071/api
```

---

# Deploy to Azure

## Login

```bash
az login
```

## Deploy Infrastructure

```bash
az deployment group create \
    --resource-group <resource-group-name> \
    --template-file main.bicep
```

## Publish Function App

```bash
func azure functionapp publish <FunctionAppName>
```

---

# Azure API Management

The Function App can be imported into Azure API Management to provide:

- Authentication
- Authorization
- API Keys
- OAuth 2.0
- JWT Validation
- Rate Limiting
- Caching
- Request Transformation
- Response Transformation
- Monitoring
- Analytics

---

# Security

Recommended production practices:

- Azure Active Directory Authentication
- Managed Identity
- Azure Key Vault
- HTTPS Only
- Function Keys
- API Subscription Keys
- JWT Authentication

---

# Future Improvements

- Swagger / OpenAPI
- Entity Framework Core
- Azure SQL Database
- Cosmos DB
- Redis Cache
- Application Insights
- GitHub Actions CI/CD
- Azure DevOps Pipeline
- Unit Testing
- Integration Testing
- API Versioning
- Health Checks

---

# Learning Objectives

By exploring this project, you'll learn:

- Azure Functions fundamentals
- Serverless API development
- Azure API Management integration
- REST API best practices
- Infrastructure as Code with Bicep
- Azure deployment workflow

---

# Contributing

Contributions are welcome!

1. Fork the repository
2. Create a feature branch

```bash
git checkout -b feature/new-feature
```

3. Commit your changes

```bash
git commit -m "Add new feature"
```

4. Push to your branch

```bash
git push origin feature/new-feature
```

5. Open a Pull Request

---

# License

This project is licensed under the MIT License.

---

## Author

**Your Name**

GitHub: https://github.com/your-username

---

⭐ If you found this project helpful, consider giving it a star on GitHub!
