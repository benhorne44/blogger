class Attaching < ActiveRecord::Base
  belongs_to :article
  belongs_to :attachment
end
