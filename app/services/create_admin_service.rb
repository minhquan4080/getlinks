class CreateAdminService
  def call
    User.find_or_create_by!(email: 'quanmn.libra@gmail.com') do |user|
      user.password = 'password'
      user.password_confirmation = 'password'
      user.user_type = 1
    end
  end
end
