# user_identities

External identity links (OAuth/OpenID/etc.). One row per (provider, provider_user_id).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| provider | VARCHAR(100) | NO |  | Provider key (e.g., google, github). Part of UNIQUE (provider, provider_user_id). |
| provider_user_id | VARCHAR(255) | NO |  | User id at provider. Part of UNIQUE (provider, provider_user_id). |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |
| user_id | BIGINT | NO |  | User (FK users.id). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_provider_user | provider, provider_user_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_user_identities_user | user_id | INDEX idx_user_identities_user (user_id) |
| ux_provider_user | provider,provider_user_id | UNIQUE KEY ux_provider_user (provider, provider_user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_user_identities_user | user_id | users(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_provider_user | provider, provider_user_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_user_identities_user | user_id | CREATE INDEX IF NOT EXISTS idx_user_identities_user ON user_identities (user_id) |
| ux_provider_user | provider,provider_user_id | CREATE UNIQUE INDEX IF NOT EXISTS ux_provider_user ON user_identities (provider, provider_user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_user_identities_user | user_id | users(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_user_identities | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_user_identities | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
