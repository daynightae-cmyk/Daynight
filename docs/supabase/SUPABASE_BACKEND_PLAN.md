
# Supabase Backend Plan

## Purpose

Supabase will support the future delivery system for DAY NIGHT DELIVERY SERVICES.

## Core Modules

* Customers
* Drivers
* Orders
* Tracking
* Pricing
* Payments
* COD
* Notifications
* Admin settings
* Audit log

## Suggested Tables

```text
profiles
customers
drivers
orders
order_status_history
driver_locations
pricing_rules
international_rates
payments
wallets
notifications
audit_log
```

## Suggested Functions

```text
generate_tracking_number()
calculate_delivery_price()
calculate_international_price()
assign_driver()
update_order_status()
send_notification()
```

## Security

* Enable Row Level Security.
* Keep service role key private.
* Use anon key only for safe frontend operations.
* Never commit Supabase secrets to GitHub.
  '@

Write-Utf8File "docs\operations\ORDER_WORKFLOW.md" @'

# Order Workflow

## Standard Delivery Flow

```text
1. Customer requests delivery.
2. Team receives order details.
3. Price is confirmed.
4. Pickup location is confirmed.
5. Driver is assigned.
6. Shipment is picked up.
7. Tracking status is updated.
8. Shipment is delivered.
9. Proof of delivery is saved if required.
10. Customer receives confirmation.
```

## Required Order Data

* Sender name
* Sender phone
* Pickup location
* Receiver name
* Receiver phone
* Delivery location
* Shipment type
* Weight
* Number of pieces
* Service type
* Price
* Payment method
* Notes
* Status
  '@

Write-Utf8File "docs\branding\BRAND_GUIDELINES.md" @'

# Brand Guidelines

## Brand Name

DAY NIGHT DELIVERY SERVICES

## Arabic Name

داي نايت لخدمات التوصيل والشحن

## Slogans

* 24/7 DELIVERY SERVICE
* Swift • Secure • Exceptional
* Fast • Reliable • Every Time
* راحتكم أولويتنا

## Colors

| Color      | Usage                               |
| ---------- | ----------------------------------- |
| Royal Blue | Main brand color                    |
| Navy Blue  | Premium and professional background |
| Sky Blue   | Technology and movement             |
| Gold       | Luxury and quality                  |
| White      | Clean delivery identity             |
| Black      | Contrast and premium accent         |

## Vehicle Branding

Use White Toyota Rush in official visual materials.

Logo placement:

* Side doors
* Hood
* Rear panels
* Rear side
  '@

Write-Utf8File "docs\SEO_CHECKLIST.md" @'

# SEO Checklist

## Main Keywords

* UAE delivery service
* Abu Dhabi delivery company
* Dubai courier service
* Same day delivery UAE
* International shipping UAE
* E-commerce delivery UAE
* Cash on delivery UAE
* Delivery company Mussafah
* شركة توصيل في الإمارات
* توصيل أبوظبي
* شحن دولي من الإمارات
* توصيل متاجر إلكترونية

## WordPress SEO Tasks

* Install SEO plugin.
* Set homepage title.
* Add meta descriptions.
* Add sitemap.
* Submit sitemap to Google Search Console.
* Optimize contact page.
* Add WhatsApp CTA buttons.
* Use alt text for images.
* Add local business schema later.
  '@

Write-Utf8File "docs\API_SPEC_DRAFT.md" @'

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
