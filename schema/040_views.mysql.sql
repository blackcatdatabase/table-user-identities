-- Auto-generated from schema-views-mysql.yaml (map@sha1:B3C579FF17AC186C47D2C4AC86B0738DB2308BF2)
-- engine: mysql
-- table:  user_identities

-- Contract view for [user_identities]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_user_identities AS
SELECT
  id,
  user_id,
  provider,
  provider_user_id,
  created_at,
  updated_at
FROM user_identities;
