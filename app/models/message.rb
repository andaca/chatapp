class Message < ApplicationRecord
  # https://stackoverflow.com/questions/1163032/rails-has-many-with-alias-name
  # https://stackoverflow.com/questions/1163032/rails-has-many-with-alias-name
  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User'
end
