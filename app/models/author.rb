class Author < ActiveRecord::Base
	has_many :books
	#validates :author, uniqueness: { messages: "No puede estar repetido"}, presence: { messages: "Campo Obligatorio"}
end
