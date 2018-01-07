class Pia < ActiveRecord::Base
	has_ancestry
	include PgSearch
	pg_search_scope :search_by_title_pid, against: [:pid, :titulo]
end
