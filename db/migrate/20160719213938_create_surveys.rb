class CreateSurveys < ActiveRecord::Migration
  def change
    create_table(:surveys) do |t|
      t.column(:name, :string)

      t.timestamps()
    end

    add_column(:questions, :survey_id, :integer)
  end
end
