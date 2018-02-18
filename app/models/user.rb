class User < ApplicationRecord
    has_many :orders #relacja między modelami
   # attr_accessor :name, :email /// mamy  dostęp automatycznie
end