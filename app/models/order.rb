class Order < ApplicationRecord

    scope :ready, lambda {where(:orderReady => true)}
    scope :accepted, lambda {where(:orderAccepted => true)}
    scope :sent, lambda {where(:sentToStore => true)}


    scope :oldestFirst, lambda {order{"created_at ASC"}}


end
