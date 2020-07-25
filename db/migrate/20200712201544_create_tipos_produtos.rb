class CreateTiposProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :tipos_produtos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
