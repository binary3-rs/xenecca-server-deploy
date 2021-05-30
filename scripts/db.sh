#!/bin/bash

web_learning_categories=('HTML' 'CSS', 'JavaScript', 'Angular', 'ReactJS', 'VueJS', 'Spring', 'Django', 'Flask')

sudo -u postgres -H -- psql -d xenecca -c "INSERT INTO \"user\" (
id, account_non_expired, account_non_locked, created_at, credentials_non_expired, email, enabled, first_name, last_name, password, updated_at, username)
VALUES (100, true, true, current_timestamp, true, 'pantelija@pantelija.com', true, 'Nenad', 'Pantelic','$2a$10$EDpofA3H38GFp6Qs8bqm.OFLFr3kqQGUvYsbgPMFCdytq9vZKZjFa',current_timestamp, 'sone');
INSERT INTO \"learning_resource_category\" (id, name, domain, created_at, updated_at) VALUES (100, 'HTML', 'Web development', current_timestamp,current_timestamp); 
"


