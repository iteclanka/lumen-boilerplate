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
    $users = \App\User::with('role')->get();
    return response()->json($users,200);
});

$router->get('roles', function() {
    $roles = \App\Models\Role::all();
    return response()->json(['data' => $roles], 200);
});


$router->get('users/{id}', 'UserController@view');
$router->put('users/{id}', 'UserController@update');
$router->post('users', 'UserController@store');

$router->group(
    ['middleware' => 'jwt.auth'],
    function() use ($router) {
        $router->get('userss', function() {
            $users = \App\User::all();
            return response()->json($users);
        });
    }
);

