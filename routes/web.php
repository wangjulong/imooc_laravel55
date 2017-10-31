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

Route::group(['middleware' => 'auth:web'], function (){
    // 登出行为
    Route::get('/logout', '\App\Http\Controllers\LoginController@logout');

    Route::group(['prefix' => 'posts'], function(){
        // 创建文章
        Route::get('/create', '\App\Http\Controllers\PostController@create');
        Route::post('/', '\App\Http\Controllers\PostController@store');
        // 编辑文章
        Route::get('/{post}/edit', '\App\Http\Controllers\PostController@edit');
        Route::put('/{post}', '\App\Http\Controllers\PostController@update');
        // 删除文章
        Route::get('/{post}/delete', '\App\Http\Controllers\PostController@delete');
        // 图片上传
        Route::post('/image/upload', '\App\Http\Controllers\PostController@imageUpload');
        Route::post('/{post}/comment', '\App\Http\Controllers\PostController@comment');
        // 文章点赞
        Route::get('/{post}/zan', '\App\Http\Controllers\PostController@zan');
        // 取消点赞
        Route::get('/{post}/unzan', '\App\Http\Controllers\PostController@unzan');
    });

    Route::group(['prefix' => 'user'], function(){
        // 个人设置
        Route::get('/me/setting', '\App\Http\Controllers\UserController@setting');
        // 设置行为
        Route::post('/me/setting', '\App\Http\Controllers\UserController@settingStore');
        // 关注用户
        Route::post('/{user}/fan', '\App\Http\Controllers\UserController@fan');
        // 取消关注
        Route::post('/{user}/unfan', '\App\Http\Controllers\UserController@unfan');
    });

    // 专题投稿
    Route::post('topic/{topic}/submit', '\App\Http\Controllers\TopicController@submit');

    // 通知
    Route::get('/notices', '\App\Http\Controllers\NoticeController@index');
});

// 注册模块
Route::get('/register', '\App\Http\Controllers\RegisterController@index');
Route::post('/register', '\App\Http\Controllers\RegisterController@register');

// 登录模块
Route::get('/login', '\App\Http\Controllers\LoginController@index');
// 登录行为
Route::post('/login', '\App\Http\Controllers\LoginController@login');

// 文章首页
Route::get('/', '\App\Http\Controllers\PostController@index');
// 文章搜索
Route::get('posts/search', '\App\Http\Controllers\PostController@search');
// 专题详情
Route::get('topic/{topic}', '\App\Http\Controllers\TopicController@show');
// 文章详情
Route::get('posts/{post}', '\App\Http\Controllers\PostController@show');
// 个人中心
Route::get('user/{user}', '\App\Http\Controllers\UserController@show');

// 管理后台
Route::group(['prefix' => 'admin'], function(){
    // 登录模块
    Route::get('/login', '\App\Http\Controllers\Admin\LoginController@index');
    Route::post('/login', '\App\Http\Controllers\Admin\LoginController@login');
    Route::get('/logout', '\App\Http\Controllers\Admin\LoginController@logout');

    Route::group(['middleware' => 'auth:admin'], function (){
        // 后台首页
        Route::get('/', '\App\Http\Controllers\Admin\HomeController@index');

        Route::group(['middleware' => 'can:system'], function (){
            // 管理员模块
            Route::get('/users', '\App\Http\Controllers\Admin\UserController@index');
            Route::get('/users/create', '\App\Http\Controllers\Admin\UserController@create');
            Route::post('/users/store', '\App\Http\Controllers\Admin\UserController@store');
            Route::get('/users/{user}/role', '\App\Http\Controllers\Admin\UserController@role');
            Route::post('/users/{user}/role', '\App\Http\Controllers\Admin\UserController@storeRole');

            //角色模块
            Route::get('/roles', '\App\Http\Controllers\Admin\RoleController@index');
            Route::get('/roles/create', '\App\Http\Controllers\Admin\RoleController@create');
            Route::post('/roles/store', '\App\Http\Controllers\Admin\RoleController@store');
            Route::get('/roles/{role}/permission', '\App\Http\Controllers\Admin\RoleController@permission');
            Route::post('/roles/{role}/permission', '\App\Http\Controllers\Admin\RoleController@storePermission');

            // 权限模块
            Route::get('/permissions', '\App\Http\Controllers\Admin\PermissionController@index');
            Route::get('/permissions/create', '\App\Http\Controllers\Admin\PermissionController@create');
            Route::post('/permissions/store', '\App\Http\Controllers\Admin\PermissionController@store');
        });

        Route::group(['middleware' => 'can:post'], function (){
            // 审核模块
            Route::get('/posts', '\App\Http\Controllers\Admin\PostController@index');
            Route::post('/posts/{post}/status', '\App\Http\Controllers\Admin\PostController@status');
        });

        Route::group(['middleware' => 'can:topic'], function (){
            // 专题管理
            Route::resource('topics', '\App\Http\Controllers\Admin\TopicController', ['only' => ['index', 'create', 'store', 'destroy']]);
        });

        Route::group(['middleware' => 'can:notice'], function (){
            // 专题管理
            Route::resource('notices', '\App\Http\Controllers\Admin\NoticeController', ['only' => ['index', 'create', 'store']]);
        });

    });
});