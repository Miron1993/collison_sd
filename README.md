
## Instructions to install laravel project

1. pull project from https://github.com/Miron1993/collison_sd.git
2. create collison_sd database in your locahost or find collison_sd sql file in root to import 
3. composer install
4. php artisan key:generate 
5. php artisan migrate (skip if you import DB)
6. php artisan db:seed (skip if you import DB)
7. php artisan serve