-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  user_identities
CREATE UNIQUE INDEX ux_provider_user ON user_identities (provider, provider_user_id);

CREATE INDEX idx_user_identities_user ON user_identities (user_id);
