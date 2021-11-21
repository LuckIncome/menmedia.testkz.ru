<?php

namespace App\Models;

use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Video extends BaseModel
{
    use HasFactory, Resizable, Translatable;

    protected $translatable = ['title','content','seo_title','meta_description','meta_keywords'];

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function event()
    {
        return $this->belongsTo(Event::class);
    }
}
