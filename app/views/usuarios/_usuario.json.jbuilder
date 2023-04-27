json.extract! usuario, :id, :nome, :sobrenome, :cpf, :fone_cod_pais, :fone_cod_area, :fone_num, :feminino, :estado_civil_id, :instrucao_grau_id, :data_nascimento, :email, :municipio_id, :endereco_cep, :endereco_logradouro, :endereco_numero, :endereco_complemento, :profissao, :preferencia_contato, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
