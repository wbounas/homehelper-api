# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :type

  def type
    return 'user'
  end
end
