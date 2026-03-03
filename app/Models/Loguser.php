<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Loguser extends Model
{
    use HasFactory;
    protected $table = 'loguser';
    protected $fillable = [
        'name',
        'email',
        'role_id',
        'user_agent',
        'url',
        'method',
        'datavalues',
        'activity',
        'action',
        'ip'
    ];

    public function role()
    {
        return $this->belongsTo(Role_akses::class, 'role_id', 'id');
    }

}