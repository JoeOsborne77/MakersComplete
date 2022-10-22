require_relative "../lib/Timeline_Post_Repository.rb"
require_relative "../lib/Timeline_Post.rb"

RSpec.describe Timeline_Post_Repository do

  def reset_user_table
    seed_sql = File.read('spec/socials_seeds.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'socials' })
    connection.exec(seed_sql)
  end

    before(:each) do 
      reset_user_table
    end

  it "shows titles" do
    tpr = Timeline_Post_Repository.new
    all_posts = tpr.all
    expect(all_posts[2].title).to eq 'Tomorrow'
    expect(all_posts[1].title).to eq 'Yesterday'
  end

  it "shows views" do
    tpr = Timeline_Post_Repository.new
    all_posts = tpr.all
    expect(all_posts[4].views).to eq '1000000'
    expect(all_posts[5].views).to eq '500'
  end

  it "shows content" do
    tpr = Timeline_Post_Repository.new
    all_posts = tpr.all
    expect(all_posts[0].content).to eq 'I ate an apple'
    expect(all_posts[3].content).to eq 'I will go to the beach'
  end

  it "shows User ids" do
    tpr = Timeline_Post_Repository.new
    all_posts = tpr.all
    expect(all_posts[2].user_account_id).to eq '2'
    expect(all_posts[5].user_account_id).to eq '3'
  end

  it "finds post by id" do
    tpr = Timeline_Post_Repository.new
    user = tpr.find(2)
    expect(user.views).to eq '10000'
  end

  it "finds post by id" do
    tpr = Timeline_Post_Repository.new
    user = tpr.find(5)
    expect(user.content).to eq 'I will turn 184 years old'
  end

  it "creates post" do
    repo = Timeline_Post_Repository.new
    new_post = Timeline_Post.new
    new_post.id = 7
    new_post.title = 'Scuba Diving'
    new_post.content = 'In Grenada was a life changing experience'
    new_post.views = '77'
    new_post.user_account_id = 3
    repo.create(new_post)
    all_posts = repo.all
    expect(all_posts[6].content).to eq('In Grenada was a life changing experience')
  end

  it "deletes post" do
    repo = Timeline_Post_Repository.new
    delete_id = 1
    repo.delete(delete_id)
    all_posts = repo.all
    expect(all_posts.length).to eq 4
  end
end
