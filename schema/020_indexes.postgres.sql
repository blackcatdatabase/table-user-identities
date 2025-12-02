-- Auto-generated from schema-map-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  user_identities

CREATE UNIQUE INDEX IF NOT EXISTS ux_provider_user ON user_identities (provider, provider_user_id);

CREATE INDEX IF NOT EXISTS idx_user_identities_user ON user_identities (user_id);
