<?php

namespace App\Http\Controllers\Admin;

use App\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PostController extends Controller
{
    // 审核页面
    public function index()
    {
        $posts = Post::withoutGlobalScope('avaiable')->where('status', 0)->orderBy('created_at', 'desc')->paginate(10);
        return view('admin/post/index', compact('posts'));
    }

    // 审核逻辑
    public function status(Post $post)
    {

        $this->validate(request(), [
            "status" => 'required|in:-1,1',
        ]);

        $post->status = request('status');
        $post->save();

        return ['error' => 0, 'msg' => ''];
    }
}
