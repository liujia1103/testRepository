<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class PostController extends Controller
{
    /*
     * 文章列表
     */
    public function index()
    {
        $user = \Auth::user();
        $posts = Post::aviable()->orderBy('created_at', 'desc')->withCount(["zans", "comments"])->with(['user'])->paginate(6);

        return view('post/index', compact('posts'));
    }

    public function imageUpload(Request $request)
    {
        $path = $request->file('wangEditorH5File')->storePublicly(md5(\Auth::id() . time()));
        return asset('storage/'. $path);
    }

    public function create()
    {
        return view('post/create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|max:255|min:1',
            'content' => 'required|min:1',
        ]);
        $params = array_merge(request(['title', 'content']), ['user_id' => \Auth::id()]);
        Post::create($params);
        return redirect('/posts');
    }

    public function edit(Post $post)
    {
        return view('post/edit', compact('post'));
    }

    public function show(\App\Post $post)
    {
        return view('post/show', compact('post'));
    }

    public function update(Request $request, Post $post)
    {
        $this->validate($request, [
            'title' => 'required|max:255|min:4',
            'content' => 'required|min:100',
        ]);

        $this->authorize('update', $post);

        $post->update(request(['title', 'content']));
        return redirect("/posts/{$post->id}");
    }

    /*
     * 文章评论保存
     */
    public function comment()
    {
        $this->validate(request(),[
            'post_id' => 'required|exists:posts,id',
            'content' => 'required|min:1',
        ]);

        $user_id = \Auth::id();

        $params = array_merge(
            request(['post_id', 'content']),
            compact('user_id')
        );
        \App\Comment::create($params);
        return back();
    }

    /*
     * 点赞
     */
    public function zan(Post $post)
    {
        $zan = new \App\Zan;
        $zan->user_id = \Auth::id();
        $post->zans()->save($zan);
        return back();
    }

    /*
     * 取消点赞
     */
    public function unzan(Post $post)
    {
        $post->zan(\Auth::id())->delete();
        return back();
    }

    /*
     * 搜索页面
     */
    public function search()
    {
        $this->validate(request(),[
            'query' => 'required'
        ]);

        $query = request('query');
        $posts = Post::search(request('query'))->paginate(10);
        return view('post/search', compact('posts', 'query'));
    }
}
