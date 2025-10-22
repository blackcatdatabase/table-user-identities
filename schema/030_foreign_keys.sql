-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: user_identities
ALTER TABLE user_identities ADD CONSTRAINT fk_user_identities_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
