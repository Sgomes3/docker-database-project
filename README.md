Starting the database:
-In terminal, cd into this folder in your directory and use command: `docker compose up'

Stopping the database:
-In terminal, use command: 'docker compose down'
--If you edited an sql script and want it to run the updated version, use command: 'docker compose down -v'

Connecting to the database:
1. Start the database
2. In mySQL Workbench, create new connection with the following settings:
Host Name: 127.0.0.1
Port: 3306
User Name: sgomes
Password: sgomes123
3. Save connection
4. Double click on the new connection in the Home tab to connect to the database