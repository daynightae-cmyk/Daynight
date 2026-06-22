
# Project Structure

This document explains the DAY NIGHT DELIVERY SERVICES repository structure.

## Main Folders

| Folder               | Purpose                                   |
| -------------------- | ----------------------------------------- |
| 01-Website-WordPress | WordPress website content and import plan |
| 02-Frontend-NextJS   | Future customer portal and dashboard      |
| 03-Supabase-Backend  | Backend database, auth, orders, tracking  |
| 04-Assets            | Logos, images, banners, brand files       |
| 05-Reports           | Device, environment, and setup reports    |
| 06-Backups           | Local backups                             |
| 07-Documents         | Company and business documents            |
| 08-Branding          | Visual identity and design references     |
| 09-Deploy            | Deployment notes                          |
| 10-Database          | Database files and exports                |
| docs                 | Professional documentation                |
| scripts              | Automation scripts                        |
| '@                   |                                           |

Write-Utf8File "docs\ROADMAP.md" @'

# Development Roadmap

## Phase 1 - Foundation

* Repository setup
* GitHub connection
* README documentation
* WordPress page content
* Basic project structure

## Phase 2 - WordPress Website

* Install WordPress on Namecheap
* Connect daynightae.com
* Enable SSL
* Install theme
* Create pages
* Add contact buttons
* Add pricing
* Add tracking page
* Add request delivery page

## Phase 3 - Supabase Backend

* Orders table
* Tracking number generation
* Customer profiles
* Driver profiles
* Driver locations
* Notifications
* Payments and COD records

## Phase 4 - Dashboard

* Admin dashboard
* Driver dashboard
* Customer portal
* Live tracking
* Invoice downloads

## Phase 5 - Advanced Platform

* Mobile driver app
* Push notifications
* Analytics
* Multi-language website
* Automated invoices
  '@

Write-Utf8File "docs\wordpress\NAMECHEAP_WORDPRESS_DEPLOYMENT.md" @'

# Namecheap WordPress Deployment Plan

## Domain

```text
daynightae.com
```

## Installation Steps

1. Login to Namecheap.
2. Open Hosting List.
3. Open cPanel.
4. Open Softaculous Apps Installer.
5. Select WordPress.
6. Choose protocol: https://
7. Choose domain: daynightae.com
8. Keep In Directory empty.
9. Set site name: DAY NIGHT DELIVERY SERVICES.
10. Set admin username and strong password.
11. Install WordPress.
12. Open wp-admin.
13. Set permalinks to Post Name.
14. Enable SSL.
15. Install theme.
16. Create website pages.
17. Copy content from 01-Website-WordPress/pages.

## Recommended Pages

* Home
* About Us
* Services
* UAE Delivery
* International Shipping
* E-Commerce Solutions
* Pricing
* Track Shipment
* Request Delivery
* Contact Us

## Important

Do not install WordPress inside `/wp` unless intentionally needed.