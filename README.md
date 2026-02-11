# Notification Service (Microsserviço de Notificações)

Responsável por centralizar logs e eventos do sistema. 

## 📋 Requisitos
* **Ruby:** 3.4.7
* **Rails:** 8.1+ (API Mode)
* **Banco de Dados:** PostgreSQL

## 🚀 Como Executar

Clonar este repositório na mesma pasta (desafio-contact2sale) que os outros serviços estão.

Este serviço faz parte da stack principal. Para rodar todo o ambiente:

```bash
# Na raiz do projeto webscraping-manager
sudo docker-compose up --build
```

## 🔌 Documentação da API

### 1. Criar Notificação

Registra um novo evento do sistema.

**Endpoint:** `POST /notifications`

**Body (JSON):**
```json
{
  "notification": {
    "task_id": 123,
    "event_type": "task_completed",
    "data": {
      "vehicle": "Jeep Compass",
      "price": "R$ 150.000",
      "obs": "Dados flexíveis aqui"
    }
  }
}
```

**Exemplo cURL:**
```bash
curl -X POST http://localhost:3002/notifications \
  -H "Content-Type: application/json" \
  -d '{
    "notification": {
      "task_id": 1,
      "event_type": "task_completed",
      "data": { "msg": "Teste manual via curl" }
    }
  }'
```

### 2. Listar Notificações

Retorna o histórico recente.

**Endpoint:** `GET /notifications`

**Exemplo cURL:**
```bash
curl http://localhost:3002/notifications
```


