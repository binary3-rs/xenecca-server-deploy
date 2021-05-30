sudo -u postgres psql postgres -> login u postgres shell
CREATE USER xenecca_user WITH PASSWORD 'z+/M><@KG(,$:B2XmW:U9>,zps(F4%K_' CREATEDB;
CREATE DATABASE "xenecca" WITH OWNER "xenecca_user" ENCODING 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';

service postgresql status - status POSTGRES-a
