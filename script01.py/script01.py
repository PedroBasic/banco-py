import sqlite3

if __name__ == "__main__":
    
    # O Banco db.sqlite3 será criado no mesmo diretorio
    conexao = sqlite3.connect("db.sqlite3")

    comando = """
    CREATE TABLE IF NOT EXISTS tb_estados(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        sigla TEXT NOT NULL,
        regiao TEXT NOT NULL
    );
    """
    
    # Criamos um cursor, é necessario para executar comandos no bando de dados assim como.
    cur = conexao.cursor()

    cur.execute(comando)

    estados = {
        "Acre": {"sigla": "AC", "regiao": "Norte"},
        "Alagoas": {"sigla": "AL", "regiao": "Nordeste"},
        "Amapá": {"sigla": "AP", "regiao": "Norte"},
        "Amazonas": {"sigla": "AM", "regiao": "Norte"},
        "Bahia": {"sigla": "BA", "regiao": "Nordeste"},
        "Ceará": {"sigla": "CE", "regiao": "Nordeste"},
        "Distrito Federal": {"sigla": "DF", "regiao": "Centro-Oeste"},
        "Espírito Santo": {"sigla": "ES", "regiao": "Sudeste"},
        "Goiás": {"sigla": "GO", "regiao": "Centro-Oeste"},
        "Maranhão": {"sigla": "MA", "regiao": "Nordeste"},
        "Mato Grosso": {"sigla": "MT", "regiao": "Centro-Oeste"},
        "Mato Grosso do Sul": {"sigla": "MS", "regiao": "Centro-Oeste"},
        "Minas Gerais": {"sigla": "MG", "regiao": "Sudeste"},
        "Pará": {"sigla": "PA", "regiao": "Norte"},
        "Paraíba": {"sigla": "PB", "regiao": "Nordeste"},
        "Paraná": {"sigla": "PR", "regiao": "Sul"},
        "Pernambuco": {"sigla": "PE", "regiao": "Nordeste"},
        "Piauí": {"sigla": "PI", "regiao": "Nordeste"},
        "Rio de Janeiro": {"sigla": "RJ", "regiao": "Sudeste"},
        "Rio Grande do Norte": {"sigla": "RN", "regiao": "Nordeste"},
        "Rio Grande do Sul": {"sigla": "RS", "regiao": "Sul"},
        "Rondônia": {"sigla": "RO", "regiao": "Norte"},
        "Roraima": {"sigla": "RR", "regiao": "Norte"},
        "Santa Catarina": {"sigla": "SC", "regiao": "Sul"},
        "São Paulo": {"sigla": "SP", "regiao": "Sudeste"},
        "Sergipe": {"sigla": "SE", "regiao": "Nordeste"},
        "Tocantins": {"sigla": "TO", "regiao": "Norte"}
}


    for chave, valor in estados.items():
        sigla = valor["sigla"]
        regiao = valor["regiao"]
        
        # Montamos o comando para inserção dos dados na tabela
        comando = f"INSERT INTO tb_estados(nome, sigla, regiao) VALUES ('{chave}', '{sigla}', '{regiao}')"

        # Executamos o comando.
        cur.execute(comando)
        print(f"Registro {valor} inserido com sucesso!! ")

        #Para inserir os dados na tabela, além de executar os comandos INSERT, 
        conexao.commit()
