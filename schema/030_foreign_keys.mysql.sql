-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  user_identities

ALTER TABLE user_identities ADD CONSTRAINT fk_user_identities_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
