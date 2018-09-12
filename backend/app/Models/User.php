<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 24 Jul 2018 07:20:29 +0000.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Eloquent;

/**
 * Class User
 *
 * @property int $id
 * @property string $name
 * @property string $email
 * @property string $password
 * @property string $remember_token
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property int $is_active
 *
 * @package App\Models
 */
class User extends Eloquent
{
    protected $casts = [
        'is_active' => 'int'
    ];

    protected $hidden = [
        'password',
        'remember_token'
    ];

    protected $fillable = [
        'name',
        'email',
        'password',
        'remember_token',
        'is_active',
        'avatar'
    ];

    public function role()
    {
        return $this->belongsTo(\App\Models\Role::class);
    }
}
