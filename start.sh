#git clone https://github.com/rappasoft/laravel-5-boilerplate.git
#sudo chmod -R 777 laravel-5-boilerplate/
#cd laravel-5-boilerplate/
composer update
touch database/database.sqlite
sudo chmod -R 777 database/database.sqlite
php -r "file_exists('.env') || copy('.env.example', '.env');"
php artisan optimize
php artisan key:generate
php artisan migrate
php artisan db:seed
php artisan serve
