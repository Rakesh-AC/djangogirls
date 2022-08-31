from django.shortcuts import render
from django.utils import timezone
from django.shortcuts import render, get_object_or_404

def post_list(request):
    posts = {"post 1":"first post", "post 2":"second post"}
    return render(request, 'blog/post_list.html', {'posts': posts})


def post_detail(request, pk):
    post = get_object_or_404(Post, pk=pk)
    return render(request, 'blog/post_detail.html', {'post': post})



