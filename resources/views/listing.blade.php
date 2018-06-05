@extends('layouts.app')

@section('title','Home')

@section('body_class','listing')

@section('content')
<main>
    <section id="item-listing">
        <div class="section--inner has-ver-padding">
            <div class="container">
                <div class="row">
                    @foreach($article as $row)
                    <div class="col-md-3">
                        <div class="item">
                            <figure class="no-margin">
                                <a href="{{ $row->getUrl() }}" class="d-block"><img class="w-fit" src="{{ $row->getThumbUrl() }}"></a>
                            </figure>
                            <figcaption>
                                <h5 class="item-title">{{ $row->title }}</h5>
                                <p class="item-text">{{ $row->excerpt }}</p>
                                <a href="{{ $row->getUrl() }}" class="link link-opaque small f-bold">Read More ></a>
                            </figcaption>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
</main>
@endsection