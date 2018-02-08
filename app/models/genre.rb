class Genre < ApplicationRecord
	has_many :books

	default_scope {order(name: :asc) }

end
