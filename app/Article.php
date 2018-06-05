<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $table = 'article';

    public function getUrl()
    {
    	return url('article/'.$this->id);
    }

    public function getThumbUrl()
    {
    	return 'uploads/'.$this->thumb_url;
    }

    public function getImgUrl()
    {
    	return 'uploads/'.$this->img_url;
    }
}