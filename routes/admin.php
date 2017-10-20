<?php

// 管理后台
Route::group(['prefix' => 'admin'], function(){
    // 登录页面
    Route::get('login', '\App\Http\Controllers\Admin\LoginController@index');
    // 登录行为
    Route::post('/login', '\App\Http\Controllers\Admin\LoginController@login');
    // 登出行为
    Route::get('/logout', '\App\Http\Controllers\Admin\LoginController@logout');

    Route::group(['middleware' => 'auth:admin'], function (){
        // 后台首页
        Route::get('/home', '\App\Http\Controllers\Admin\HomeController@index');
        // 管理员列表
        Route::get('/users', '\App\Http\Controllers\Admin\UserController@index');
        // 创建管理员
        Route::get('/users/create', '\App\Http\Controllers\Admin\UserController@create');
        // 创建逻辑
        Route::post('/users/store', '\App\Http\Controllers\Admin\UserController@store');
    });
});

