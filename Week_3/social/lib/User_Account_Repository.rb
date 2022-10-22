require_relative "User_Account.rb"

class User_Account_Repository
  def all
    sql = 'SELECT id, email_address, username FROM user_accounts'
    result_set = DatabaseConnection.exec_params(sql,[])

    users = []

    result_set.each do |user| 
      new_user = User_Account.new
      new_user.id = user['id']
      new_user.email_address = user ['email_address']
      new_user.username = user ['username']

      users << new_user
    end
    return users
  end

  def find(id)
   sql = 'SELECT id, email_address, username FROM user_accounts WHERE id = $1;'
   sql_params = [id]
    result_set = DatabaseConnection.exec_params(sql, sql_params)
    record = result_set[0]

    user = User_Account.new
    user.id = record['id']
    user.email_address = record['email_address']
    user.username = record['username']  

    return user
  end

  def create(user)
    sql = 'INSERT INTO user_accounts (id, email_address, username) VALUES ($1, $2, $3)'
      sql_params = [user.id, user.email_address, user.username]
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