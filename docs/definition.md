<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – user_identities

External identity links (OAuth/OpenID/etc.).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| user_id | BIGINT UNSIGNED | NO | — | User (FK users.id). |  |
| provider | VARCHAR(100) | NO | — | Provider key (e.g., google, github). |  |
| provider_user_id | VARCHAR(255) | NO | — | User id at provider (unique per provider). |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |