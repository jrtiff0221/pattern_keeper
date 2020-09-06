class RemoveTimestampsFromPatterns < ActiveRecord::Migration[6.0]
  def change
    remove_column :patterns, :timestamps, :string
  end
end
