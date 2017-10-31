<?php

namespace App\Http\Controllers\Admin;

use App\Topic;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TopicController extends Controller
{
    public function index()
    {
        $topics = Topic::all();
        return view('admin/topic/index', compact('topics'));
    }

    public function create()
    {
        return view('admin/topic/create');
    }

    public function store()
    {
        $this->validate(request(), [
            'name' => 'required|string',
        ]);

        $name = request('name');

        Topic::create(compact('name'));

        return redirect('/admin/topics');
    }

    public function destroy(Topic $topic)
    {
        $topic->delete();

        return ['error' => 0, 'msg' => ''];
    }
}
