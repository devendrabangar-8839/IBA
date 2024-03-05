class User < ApplicationRecord
  enum :role, [ :admin, :iba ]
end
