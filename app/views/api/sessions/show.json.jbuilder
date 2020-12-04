json.partial! partial: '/api/users/user', user: @user

# $.ajax({url: 'api/session', method: 'POST', data: {user: {username: 'michelle', password: 'ilove'}}}).fail(res => console.log(res.responseJSON));