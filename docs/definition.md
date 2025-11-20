<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – user_identities

External identity links (OAuth/OpenID/etc.). One row per (provider, provider_user_id).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| user_id | BIGINT | NO | — | User (FK users.id). |  |
| provider | VARCHAR(100) | NO | — | Provider key (e.g., google, github). Part of UNIQUE (provider, provider_user_id). |  |
| provider_user_id | VARCHAR(255) | NO | — | User id at provider. Part of UNIQUE (provider, provider_user_id). |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |