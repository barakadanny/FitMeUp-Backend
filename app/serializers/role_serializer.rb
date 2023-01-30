class RoleSerializer < ActiveModel::Serializer
  attributes :user

  def user
    exclude = ['id', 'created_at', 'updated_at', 'security_question', 'security_answer']
    role = JSON.parse(object.to_json).except(*exclude)
    role[:id] = role['user_id']
    role.delete('user_id')
    user = JSON.parse(object.user.to_json).except(*exclude)
    role.merge(user)
  end
end
