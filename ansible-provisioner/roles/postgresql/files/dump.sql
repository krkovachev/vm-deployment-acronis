CREATE TABLE IF NOT EXISTS test (           
  message varchar(255) NOT NULL         
  );          
  INSERT INTO test(message) VALUES('Ansible is cool');
ALTER TABLE test OWNER TO "postgres";