<?php

/**
 * Created by Reliese Model.
 * Date: Sat, 19 May 2018 11:38:47 +0000.
 */

namespace App\Models;

use Illuminate\Support\Facades\DB;
use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Role
 *
 * @property int $id
 * @property string $name
 *
 * @property \Illuminate\Database\Eloquent\Collection $privileges
 * @property \Illuminate\Database\Eloquent\Collection $users
 *
 * @package App\Models
 */
class Role extends Eloquent
{
    protected $table = 'role';
    public $timestamps = false;

    protected $fillable = [
        'name'
    ];

    public function privileges()
    {
//        return $this->hasMany(\App\Models\Privilege::class);
    }

    public function users()
    {
        return $this->hasMany(\App\Models\User::class);
    }

}
