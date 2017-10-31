<?php

namespace App\Http\Controllers\Admin;

use App\Jobs\SendReminderEmail;
use App\Notice;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class NoticeController extends Controller
{
    public function index()
    {
        $notices = Notice::all();
        return view('admin/notice/index', compact('notices'));
    }

    public function create()
    {
        return view('admin/notice/add');
    }

    public function store()
    {
        $this->validate(request(), [
            'title' => 'required|string',
            'content' => 'required|string',
        ]);

        $notice = Notice::create(request(['title', 'content']));

        // 分发队列
        dispatch(new SendReminderEmail($notice));

        return redirect('/admin/notices');
    }
}
