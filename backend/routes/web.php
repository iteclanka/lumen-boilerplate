<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/key', function() {
    return str_random(32);
});

$router->post(
    'auth/login',
    [
        'uses' => 'AuthController@authenticate'
    ]
);

$router->get('users', function() {
    $users = \App\User::all();
    return response()->json($users);
});


$router->get('users/{id}', 'UserController@view');

$router->group(
    ['middleware' => 'jwt.auth'],
    function() use ($router) {
        $router->get('userss', function() {
            $users = \App\User::all();
            return response()->json($users);
        });
    }
);

