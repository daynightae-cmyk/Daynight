# API Specification Draft

This is a future API draft for Day Night delivery operations.

## Endpoints

```text
POST /orders
GET /orders/{tracking_number}
PATCH /orders/{id}/status
POST /pricing/domestic
POST /pricing/international
GET /drivers/{id}/location
POST /notifications
```

## Tracking Response Example

```json
{
  "tracking_number": "DN-2026-00001",
  "status": "In Transit",
  "pickup_city": "Abu Dhabi",
  "delivery_city": "Dubai",
  "updated_at": "2026-06-22T10:00:00Z"
}
```