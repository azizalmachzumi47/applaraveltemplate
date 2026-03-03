<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable implements JWTSubject
{
    use HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'email',
        'password',
        'role_id',
        'entitas',
        'image',
        'remember_token',
        'google_id'
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    // Auto eager load role
    protected $with = ['userRole'];

    /*
    |--------------------------------------------------------------------------
    | RELATION
    |--------------------------------------------------------------------------
    */

    public function userRole()
    {
        return $this->belongsTo(Role_akses::class, 'role_id', 'id');
    }

    /*
    |--------------------------------------------------------------------------
    | ENTITAS CONFIG (Scalable)
    |--------------------------------------------------------------------------
    */

    public const ENTITAS = [
        'LG' => 'LUCAS GROUP',
        'LC' => 'LUCAS',
        'MR' => 'MARIN',
    ];

    public function getEntitasLabelAttribute()
    {
        return self::ENTITAS[$this->entitas] ?? '-';
    }

    public static function getEntitasOptions($includeLG = false)
    {
        $data = self::ENTITAS;

        if (!$includeLG) {
            unset($data['LG']);
        }

        return $data;
    }

    /*
    |--------------------------------------------------------------------------
    | JWT
    |--------------------------------------------------------------------------
    */

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }
}
