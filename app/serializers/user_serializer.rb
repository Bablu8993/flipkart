class UserSerializer < ActiveModel::Serializer
  attributes :email, :username, :role, :created_at, :last_login
end
