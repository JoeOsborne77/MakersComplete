require_relative "Timeline_Post.rb"

class Timeline_Post_Repository
  def all
    sql = 'SELECT id, title, content, views, user_account_id FROM timeline_posts'
    result_set = DatabaseConnection.exec_params(sql,[])

    posts = []

    result_set.each do |post| 
      timeline_post = Timeline_Post.new
      timeline_post.id = post['id']
      timeline_post.title = post ['title']
      timeline_post.content = post ['content']
      timeline_post.views = post ['views']
      timeline_post.user_account_id = post ['user_account_id']
      posts << timeline_post
    end
    return posts
  end

  def find(id)
  sql = 'SELECT id, title, content, views, user_account_id FROM timeline_posts WHERE id = $1;'
  sql_params = [id]
    result_set = DatabaseConnection.exec_params(sql, sql_params)
    record = result_set[0]

    timeline_post = Timeline_Post.new
    timeline_post.id = record['id']
    timeline_post.title = record['title']
    timeline_post.content = record['content']
    timeline_post.views = record['views']
    timeline_post.user_account_id = record['user_account_id']

    return timeline_post
  end

  def create(post)
    sql = 'INSERT INTO timeline_posts (id, title, content, views, user_account_id) VALUES ($1, $2, $3, $4, $5)'
      sql_params = [post.id, post.title, post.content, post.views, post.user_account_id]
      result = DatabaseConnection.exec_params(sql, sql_params)
      return nil
  end

  def delete(id)
    sql = 'DELETE FROM user_accounts WHERE id = $1;'
      sql_params = [id]
      result = DatabaseConnection.exec_params(sql, sql_params)
      return nil
  end
end