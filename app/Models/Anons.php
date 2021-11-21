<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Anons extends Model
{
    use HasFactory, Translatable;

    protected $translatable = ['title','excerpt','content','seo_title','meta_keywords','meta_description'];

    public function category()
    {
        return $this->hasOne(Category::class, 'id', 'category_id');
    }
}
