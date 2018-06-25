<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'WelcomeController@index');

// User registration
Route::get('signup', 'Auth\RegisterController@showRegistrationForm')->name('signup.get');
Route::post('signup', 'Auth\RegisterController@register')->name('signup.post');

// Login authentication
Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@login')->name('login.post');
Route::get('logout', 'Auth\LoginController@logout')->name('logout.get');

Route::delete('dont_like','ItemUserController@dont_like')->name('item_user.dont_like');

//MyLikeList
Route::get('listing/like', 'ListingController@like')->name('listing.like');

Route::post('like','ItemUserController@like')->name('item_user.like');

Route::get('mypage','WelcomeController@index')->name('welcome.index');

Route::get('detail/{id}', 'DetailController@show')->name('detail.show');