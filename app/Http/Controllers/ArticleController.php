<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;

class ArticleController extends Controller
{
    public function showArticles()
    {
    	$data['article'] = Article::all();

    	return view('listing',$data);
    }

    public function getArticle($id)
    {
    	$data['article'] = Article::find($id);

    	return view('detail',$data);
    }
}