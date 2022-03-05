class AddPrimaryTagToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :primary_tag, :bigint, null: :false
  end
end
