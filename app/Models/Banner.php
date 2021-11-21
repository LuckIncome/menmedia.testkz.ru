<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;

class Banner extends BaseModel
{
    use HasFactory, Translatable, Resizable;

    protected $translatable = ['title','subtitle','time'];

    public function event()
    {
        return $this->belongsTo(Event::class);
    }
}
