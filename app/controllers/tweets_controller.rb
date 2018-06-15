class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @users = User.all
    @categories = Category.all
    
    


    render("tweet_templates/index.html.erb")
  end

  def show
    @tweet = Tweet.find(params.fetch("id_to_display"))

    render("tweet_templates/show.html.erb")
  end

  def new_form
    render("tweet_templates/new_form.html.erb")
  end

  def create_row
    @tweet = Tweet.new

    @tweet.body = params.fetch("body")
    @tweet.url = params.fetch("url")
    @tweet.notes = params.fetch("notes")
    @tweet.category_id = params.fetch("category_id")
    @tweet.user_id = params.fetch("user_id")

    if @tweet.valid?
      @tweet.save

      redirect_to("/tweets", :notice => "Tweet created successfully.")
    else
      render("tweet_templates/new_form.html.erb")
    end
  end

  def edit_form
    @tweet = Tweet.find(params.fetch("prefill_with_id"))

    render("tweet_templates/edit_form.html.erb")
  end

  def update_row
    @tweet = Tweet.find(params.fetch("id_to_modify"))

    @tweet.body = params.fetch("body")
    @tweet.url = params.fetch("url")
    @tweet.notes = params.fetch("notes")
    @tweet.category_id = params.fetch("category_id")
    @tweet.user_id = params.fetch("user_id")

    if @tweet.valid?
      @tweet.save

      redirect_to("/tweets/#{@tweet.id}", :notice => "Tweet updated successfully.")
    else
      render("tweet_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @tweet = Tweet.find(params.fetch("id_to_remove"))

    @tweet.destroy

    redirect_to("/tweets", :notice => "Tweet deleted successfully.")
  end
end
