#!/bin/sh


#set -o xtrace
echo "Waiting for database to come up"
retries=20


until mysql --host=$DB_HOST --user=$DB_USERNAME --password=$DB_PASSWORD $DB_DATABASE; do
    echo "Mysql is unavailable - sleeping"
	echo "Connfa default user is 'admin' and password is $CMS_ADMIN_PASS."
    sleep 3
    retries=$((retries-=1))
    if [ "$retries" -lt 0 ]
    then
        echo "retried $retries times. giving up!"
        exit 1
    else
        echo "retries=$retries"
    fi
done


echo "Mysql is up - executing migrations"
php artisan migrate
php artisan db:seed
php artisan password:change --name=admin --password=$CMS_ADMIN_PASS


echo "default username for logging in at http://127.0.0.1:8000: admin@test.com. Password: $CMS_ADMIN_PASS"

php artisan serve --host=$DB_HOST --port=8000
