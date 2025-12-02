-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  user_identities

-- Contract view for [user_identities]
CREATE OR REPLACE VIEW vw_user_identities AS
SELECT
  id,
  user_id,
  provider,
  provider_user_id,
  created_at,
  updated_at
FROM user_identities;
