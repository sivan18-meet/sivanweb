import sys
import math
# flask imports
from flask import Flask, render_template, request, redirect, url_for

# SQLAlchemy
from model import Base, Post, Comment
from sqlalchemy import create_engine, desc
from sqlalchemy.orm import sessionmaker

# setup
app = Flask(__name__)
engine = create_engine('sqlite:///project.db')
Base.metadata.bind = engine
DBSession = sessionmaker(bind=engine)
session = DBSession()


@app.route('/')
def my_feed():
    posts = session.query(Post).order_by("id desc").all()
    i = 0
    total_posts = len(posts)
    
    mid_way = math.ceil(total_posts/2)

    #print(total_posts, file=sys.stderr)
    # posts_1 = []
    # posts_2 = []
    # while i < mid_way: 
    #     posts_1.append(int(posts[i]))
    #     i += 1
    # j = mid_way
    # while j < total_posts:
    #     print (posts[j])
    #     posts_2.append(int(posts[j]))
    #     j += 1


    return render_template('html.html', posts=posts)


@app.route('/comment')
def comment():
	return render_template('comment.html')

@app.route('/<string:button_name>')
def category(button_name):
    category_posts= session.query(Post).filter_by(category=button_name).all()
    return render_template('category.html', button_name=button_name, posts=category_posts)


@app.route('/post', methods=['GET', 'POST'])
def post():
    if request.method == "GET":
        return render_template('post.html')
    else:
        new_nickname = request.form.get('nickname')
        new_title    = request.form.get('title')
        new_category = request.form.get('category')
        new_debate   = request.form.get('debate')
        # print('This error output %s' % new_title,  file=sys.stderr)

        post = Post(nickname=new_nickname, title=new_title, category=new_category, debate=new_debate)
        session.add(post)
        session.commit()
        # ADD SQL SESSION
        return redirect(url_for('my_feed'))

@app.route('/delete')
def delete_account():
    return render_template('delete_account.html')

@app.route('/password')
def change_password():
    return render_template('change_password.html')

@app.route('/sign_up', methods=['GET','POST'])
def sign_up():
    if request.method == "GET":
        return render_template('sign_up.html')
    else:
        new_username   = request.form.get('username')
        new_age        = request.form.get('age')
        new_gender     = request.form.get('gender')
        new_password   = request.form.get('password')

        user= User(username=new_username, age=new_age, gender=new_gender, password= new_password)
        session.add(user)
        session.commit()
        # ADD SQL SESSION
        return redirect(url_for('my_feed'))
        


@app.route('/sign_in', methods=['GET', 'POST'])
def sign_in():
    # Here we use a class of some kind to represent and validate our
    # client-side form data. For example, WTForms is a library that will
    # handle this for us, and we use a custom LoginForm to validate.
    form = Sign_inForm()
    if form.validate_on_submit():
        # Login and validate the user.
        # user should be an instance of your `User` class
        sign_in_user(user)

        flask.flash('Logged in successfully.')

        next = flask.request.args.get('next')
        # is_safe_url should check if the url is safe for redirects.
        # See http://flask.pocoo.org/snippets/62/ for an example.
        if not is_safe_url(next):
            return flask.abort(400)

        return flask.redirect(next or flask.url_for('my_feed'))
    return flask.render_template('sign_in.html', form=form)


@app.route('/comment/<int:post_id>', methods=['GET', 'POST'])
def add_comment(post_id):
    if request.method == "GET":
        return render_template('my_feed.html')
    else:
        new_comment   = request.form.get('comment')
        
        # print('This error output %s' % new_title,  file=sys.stderr)

        comment = Comment(comment=new_comment, post=post_id)
        session.add(comment)
        session.commit()
        # ADD SQL SESSION
        # comments = session.query(Comment).filter_by(post=post_id)
        posts =  session.query(Post).all()
        return redirect(url_for('my_feed'))
# @app.route()
# def delete():
    # session.query()
    # filter(new_title=)
@app.route('/debate/<int:post_id>')
def debate(post_id):
    post = session.query(Post).filter_by(id=post_id).first()
    return render_template('debate.html', post=post)


if __name__ == '__main__':
    app.run(debug=True)