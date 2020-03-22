This application is a software that periodically checks the status of the sites entered from the admin panel.
Used technologies;
- .Net Core
- Entity Framework
- Hangfire Job
- SendGrid Mail System
- MSSQL Server
- Bootstrap Admin Panel

- Database Connection

```json
"ConnectionStrings": {
      "DefaultConnection": "Data Source=.\\SQLEXPRESS;Initial Catalog=HealtCheck;Integrated Security=True",
    "HangfireDbConn": "Data Source=.\\SQLEXPRESS;Initial Catalog=Hangfire;Integrated Security=True"
  },
```

- Application Settings

All application configuration settings in ```appsettings.json```

```json
  "Email": {
    "EmailProvider": "SendGrid",
    "EmailErrorStatus": "emrahtemurbalik@gmail.com",
    "SupportTeamEmail": "emrahtemurbalik@gmail.com",
    "SupportTeamName": "Healt Check",
    "SendGrid": {
      "KeyName": "{KEY NAME}",
      "ApiKey": "{API KEY}"
    }
  },

  "Authentication": {
    "Facebook": {
      "IsEnabled": "true",
      "AppId": "{APP ID}",
      "AppSecret": "{SECRET KEY}"
    },
    "Google": {
      "IsEnabled": "false",
      "ClientId": "{CLIENT ID}",
      "ClientSecret": "{SECRET KEY}"
    }