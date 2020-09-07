class RemovePatternidFromPatterns < ActiveRecord::Migration[6.0]
  def change
    remove_column :patterns, :pattern_id, :integer
  end
end
