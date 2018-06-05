@extends('layouts.app')

@section('title','Home')

@section('body_class','detail')

@section('content')
<main>
    <article id="item-detail">
        <div class="section--inner has-ver-padding">
            <div class="container">
                <div class="article-head">
                    <h1>{{ $article->title }}</h1>
                </div>

                <div class="article-body">
                    <img src="{{ $article->getImgUrl() }}">
                    {!! $article->content !!}
                </div>
            </div>
        </div>
    </article>
</main>
@endsection