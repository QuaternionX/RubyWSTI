class Order < ApplicationRecord
    belongs_to :user #makro belongs to, można wywoływać order.user, nie pozwoli zapisać order bez usera
   # attr_accessor :name, :email /// mamy  dostęp automatycznie
end