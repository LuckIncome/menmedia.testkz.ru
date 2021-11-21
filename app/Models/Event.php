<?php

namespace App\Models;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Event extends BaseModel
{
    use HasFactory, Translatable;

    protected $translatable = ['title','excerpt','content','seo_title','meta_keywords','meta_description'];

    public function category()
    {
        return $this->hasOne(Category::class, 'id', 'category_id');
    }

    public $casts = [
        'planned_at' => 'datetime',
    ];

    public function photos()
    {
        return $this->hasMany(Photo::class);
    }

    public function videos()
    {
        return $this->hasMany(Video::class);
    }
}
