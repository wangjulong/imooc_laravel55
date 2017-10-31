<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LoginController extends Controller
{
    // 登录页面
    public function index()
    {
        return view('admin/login/index');
    }

    // 登录行为
    public function login()
    {
        // 验证字段
        $this->validate(request(), [
            'name' => 'required|min:3',
            'password' => 'required|min:5|max:10',
        ]);

        // 登录逻辑
        $user = request(['name', 'password']);
        $is_remember = boolval(request('is_remember'));
        if (\Auth::guard('admin')->attempt($user, $is_remember)){
            return redirect('admin/');
        };

        // 渲染页面
        return \Redirect::back()->withErrors('邮箱密码不匹配');
    }

    // 登出行为
    public function logout()
    {
        \Auth::guard('admin')->logout();
        return redirect('/admin/login');
    }
}
