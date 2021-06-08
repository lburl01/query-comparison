class CreateWines < ActiveRecord::Migration[6.1]
  disable_ddl_transaction!

  def change
    enable_extension :pg_trgm

    create_table :wines do |t|

      t.string :name
      t.string :style
      t.string :country
      t.string :region
      t.string :name_normalized, null: false
      t.timestamps
    end

    add_index :wines,
              :name_normalized,
              name: :liquid_name_norm_trgm_idx,
              algorithm: :concurrently,
              using: :gin,
              opclass: :gin_trgm_ops
  end
end
