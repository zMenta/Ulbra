# comandos para conectar com EF e EF postgres

- dotnet add package Microsoft.EntityFrameworkCore.Design --version 5.0.11
- dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL --version 5.0.10

# comandos para executar as migrations

- dotnet ef migrations add firstMigrations
- dotnet ef update database