CREATE TABLE Tutor (
	tutorID INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	endereco NUMERIC (3,2),
	telefone VARCHAR (15),
	email VARCHAR (100)
);

CREATE TABLE Paciente (
	pacienteID INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	especie VARCHAR (100) NOT NULL,
	raca VARCHAR (50),
	idade INT,
	peso NUMERIC (15,2),
	tutorID INT,
	FOREIGN KEY (tutorID) REFERENCES Tutor (tutorID) 
);


CREATE TABLE Veterinario (
	veterinarioID INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	especialidade VARCHAR (100),
	telefone VARCHAR (15),
	email VARCHAR (100)
);

CREATE TABLE Agendamento (
    agendamentoID INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    data_hora TIMESTAMP NOT NULL,
    motivo BLOB Sub_Type TEXT,
    pacienteID INT NOT NULL,
    veterinarioID INT NOT NULL,
    FOREIGN KEY (pacienteID) REFERENCES Paciente(pacienteID),
    FOREIGN KEY (veterinarioID) REFERENCES Veterinario(veterinarioID)
);

CREATE TABLE Medicamentos (
	medicamentoID INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	nome VARCHAR (100) NOT NULL,
	descricao BLOB Sub_Type TEXT,
	preco DECIMAL (10,2)
);

CREATE TABLE Receita (
	receitaID INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	data_emissao DATE NOT NULL,
	agendamentoID INT NOT NULL,
    FOREIGN KEY (agendamentoID) REFERENCES Agendamento (agendamentoID)
);

CREATE TABLE ItensReceita (
	item_receitaID INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	receitaID INT NOT NULL,
    medicamentoID INT NOT NULL,
    FOREIGN KEY (receitaID) REFERENCES Receita (receitaID),
    FOREIGN KEY (medicamentoID) REFERENCES Medicamentos (medicamentoID),
    quantidade INT NOT NULL,
    dosagem VARCHAR (50)
);


/* Tabela Tutor */

INSERT INTO Tutor (
nome, endereco, telefone, email) 
VALUES (
	'João Silva', 123.45, '11987654321', 'joao.silva@gmail.com'
);

INSERT INTO Tutor (
nome, endereco, telefone, email) 
VALUES (
	'Maria Oliveira', 5.67, '11987654322', 'maria.oliveira@yahoo.com'
);

INSERT INTO Tutor (
nome, endereco, telefone, email) 
VALUES (
	'Carlos Souza', 234.56, '11987654323', 'carlos.souza@hotmail.com'
);

INSERT INTO Tutor (
nome, endereco, telefone, email) 
VALUES (
	'Ana Pereira', 3.45, '11987654324', 'ana.pereira@outlook.com'
);

INSERT INTO Tutor (
nome, endereco, telefone, email) 
VALUES (
	'Fernanda Lima', 2.20, '11987654325', 'fernanda.lima@gmail.com'
);

INSERT INTO Tutor (
nome, endereco, telefone, email) 
VALUES (
	'Roberto Costa', 8.01, '11987654326', 'roberto.costa@yahoo.com'
);

INSERT INTO Tutor (
nome, endereco, telefone, email) 
VALUES (
	'Luciana Mendes', 9.12, '11987654327', 'luciana.mendes@hotmail.com'
);

INSERT INTO Tutor (
nome, endereco, telefone, email) 
VALUES (
	'Pedro Santos', 8.23, '11987654328', 'pedro.santos@outlook.com'
);

INSERT INTO Tutor (
nome, endereco, telefone, email) 
VALUES (
	'Mariana Rocha', 234.12, '11987654329', 'mariana.rocha@gmail.com'
);

INSERT INTO Tutor (
nome, endereco, telefone, email) 
VALUES (
	'Renato Almeida', 6.21, '11987654330', 'renato.almeida@yahoo.com'
);

/* Tabela Paciente */

INSERT INTO Paciente (
	nome, especie, raca, idade, peso, tutorID
) 
VALUES (
	'Rex', 'Cão', 'Labrador', 3, 30.00, 1
);

INSERT INTO Paciente (
	nome, especie, raca, idade, peso, tutorID
) 
VALUES (
	'Mia', 'Gato', 'Siamês', 2, 4.50, 2
);

INSERT INTO Paciente (
	nome, especie, raca, idade, peso, tutorID
) 
VALUES (
	'Fido', 'Cão', 'Poodle', 5, 25.75, 3
);

INSERT INTO Paciente (
	nome, especie, raca, idade, peso, tutorID
) 
VALUES (
	'Nina', 'Gato', 'Persa', 4, 3.20, 4
);

INSERT INTO Paciente (
	nome, especie, raca, idade, peso, tutorID
) 
VALUES (
	'Thor', 'Cão', 'Bulldog', 6, 35.50, 5
);

INSERT INTO Paciente (
    nome, especie, raca, idade, peso, tutorID
) 
VALUES (
    'Luna', 'Gato', 'Bengal', 1, 3.00, 6
);

INSERT INTO Paciente (
	nome, especie, raca, idade, peso, tutorID
) 
VALUES (
	'Max', 'Cão', 'Golden Retriever', 2, 32.00, 7
);

INSERT INTO Paciente (
	nome, especie, raca, idade, peso, tutorID
) 
VALUES (
	'Simba', 'Gato', 'Maine Coon', 3, 4.00, 8
);

INSERT INTO Paciente (
	nome, especie, raca, idade, peso, tutorID
) 
VALUES (
	'Rocky', 'Cão', 'Boxer', 5, 28.00, 9
);

INSERT INTO Paciente (
	nome, especie, raca, idade, peso, tutorID
) 
VALUES (
	'Bella', 'Cão', 'Chihuahua', 2, 2.50, 10
);

/* Tabela Veterinario */

INSERT INTO Veterinario (
	nome, especialidade, telefone, email
) 
VALUES (
	'Dr. João Silva', 'Clinica Geral', '11912345678', 'joao.silva@vetmail.com'
);

INSERT INTO Veterinario (
	nome, especialidade, telefone, email
) 
VALUES (
	'Dra. Ana Oliveira', 'Dermatologia', '11923456789', 'ana.oliveira@vetmail.com'
);

INSERT INTO Veterinario (
	nome, especialidade, telefone, email
) 
VALUES (
	'Dr. Pedro Santos', 'Ortopedia', '11934567890', 'pedro.santos@vetmail.com'
);

INSERT INTO Veterinario (
	nome, especialidade, telefone, email
) 
VALUES (
	'Dra. Fernanda Lima', 'Cardiologia', '11945678901', 'fernanda.lima@vetmail.com'
);

INSERT INTO Veterinario (
	nome, especialidade, telefone, email
) 
VALUES (
	'Dr. Carlos Pereira', 'Odontologia', '11956789012', 'carlos.pereira@vetmail.com'
);

INSERT INTO Veterinario (
	nome, especialidade, telefone, email
) 
VALUES (
	'Dra. Luana Costa', 'Pediatria Veterinária', '11967890123', 'luana.costa@vetmail.com'
);

INSERT INTO Veterinario (
	nome, especialidade, telefone, email
) 
VALUES (
	'Dr. Tiago Martins', 'Cirurgia', '11978901234', 'tiago.martins@vetmail.com'
);

INSERT INTO Veterinario (
	nome, especialidade, telefone, email
) 
VALUES (
	'Dra. Juliana Ferreira', 'Nutricao', '11989012345', 'juliana.ferreira@vetmail.com'
);

INSERT INTO Veterinario (
	nome, especialidade, telefone, email
) 
VALUES (
	'Dr. Rafael Mendes', 'Psiquiatria Veterinária', '11990123456', 'rafael.mendes@vetmail.com'
);

INSERT INTO Veterinario (
	nome, especialidade, telefone, email
) 
VALUES (
	'Dra. Carla Rodrigues', 'Terapia Física', '11901234567', 'carla.rodrigues@vetmail.com'
);

/* Tabela Agendamento */

INSERT INTO Agendamento (
	data_hora, motivo, pacienteID, veterinarioID
) 
VALUES (
	'2024-09-30 10:00:00', 'Consulta de rotina', 1, 1
);

INSERT INTO Agendamento (
	data_hora, motivo, pacienteID, veterinarioID
) 
VALUES (
	'2024-10-01 11:30:00', 'Vacinação', 2, 2
);

INSERT INTO Agendamento (
	data_hora, motivo, pacienteID, veterinarioID
) 
VALUES (
	'2024-10-02 09:15:00', 'Check-up geral', 3, 3
);

INSERT INTO Agendamento (
	data_hora, motivo, pacienteID, veterinarioID
) 
VALUES (
	'2024-10-03 14:45:00', 'Tratamento de dermatite', 4, 4
);

INSERT INTO Agendamento (
	data_hora, motivo, pacienteID, veterinarioID
) 
VALUES (
	'2024-10-04 16:00:00', 'Consulta de emergência', 5, 5
);

INSERT INTO Agendamento (
	data_hora, motivo, pacienteID, veterinarioID
) 
VALUES (
	'2024-10-05 08:30:00', 'Acompanhamento pós-cirurgia', 6, 6
);

INSERT INTO Agendamento (
	data_hora, motivo, pacienteID, veterinarioID
) 
VALUES (
	'2024-10-06 13:00:00', 'Exame de sangue', 7, 7
);

INSERT INTO Agendamento (
	data_hora, motivo, pacienteID, veterinarioID
) 
VALUES (
	'2024-10-07 15:15:00', 'Consulta sobre nutrição', 8, 8
);

INSERT INTO Agendamento (
	data_hora, motivo, pacienteID, veterinarioID
) 
VALUES (
	'2024-10-08 17:30:00', 'Vacinação de reforço', 9, 9
);

INSERT INTO Agendamento (
	data_hora, motivo, pacienteID, veterinarioID
) 
VALUES (
	'2024-10-09 10:45:00', 'Consulta odontológica', 10, 10
);

/* Tabela Medicamentos */

INSERT INTO Medicamentos (
	nome, descricao, preco
) 
VALUES (
	'Amoxicilina', 'Antibiótico de amplo espectro.', 29.99
);

INSERT INTO Medicamentos (
	nome, descricao, preco
) 
VALUES (
	'Paracetamol', 'Analgesico e antipirético.', 15.50
);

INSERT INTO Medicamentos (
	nome, descricao, preco
) 
VALUES (
	'Ivermectina', 'Antiparasitário para vermes e ectoparasitas.', 10.75
);

INSERT INTO Medicamentos (
	nome, descricao, preco
) 
VALUES (
	'Ranitidina', 'Inibidor da secreção ácida no estômago.', 12.30
);

INSERT INTO Medicamentos (
	nome, descricao, preco
) 
VALUES (
	'Prednisona', 'Corticosteroide para inflamações.', 45.20
);

INSERT INTO Medicamentos (
	nome, descricao, preco
) 
VALUES (
	'Metronidazol', 'Antibiótico e antiprotozoário.', 35.00
);

INSERT INTO Medicamentos (
	nome, descricao, preco
) 
VALUES (
	'Cimetidina', 'Antagonista do receptor H2, usado em úlceras.', 20.00
);

INSERT INTO Medicamentos (
	nome, descricao, preco
) 
VALUES (
	'Enrofloxacino', 'Antibiótico utilizado em animais.', 40.99
);

INSERT INTO Medicamentos (
	nome, descricao, preco
) 
VALUES (
	'Sulfadimetoxina', 'Antibiótico sulfonamídico.', 22.40
);

INSERT INTO Medicamentos (
	nome, descricao, preco
) 
VALUES (
	'Vitaminas para cães', 'Suplemento vitamínico para cães.', 18.80
);

/* Tabela Receita */

INSERT INTO Receita (
	data_emissao, agendamentoID
) 
VALUES (
	'2024-09-01', 1
);

INSERT INTO Receita (
	data_emissao, agendamentoID
) 
VALUES (
	'2024-09-02', 2
);

INSERT INTO Receita (
	data_emissao, agendamentoID
) 
VALUES (
	'2024-09-03', 3
);

INSERT INTO Receita (
	data_emissao, agendamentoID
) 
VALUES (
	'2024-09-04', 4
);

INSERT INTO Receita (
	data_emissao, agendamentoID
) 
VALUES (
	'2024-09-05', 5
);

INSERT INTO Receita (
	data_emissao, agendamentoID
) 
VALUES (
	'2024-09-06', 6
);

INSERT INTO Receita (
	data_emissao, agendamentoID
) 
VALUES (
	'2024-09-07', 7
);

INSERT INTO Receita (
	data_emissao, agendamentoID
) 
VALUES (
	'2024-09-08', 8
);

INSERT INTO Receita (
	data_emissao, agendamentoID
) 
VALUES (
	'2024-09-09', 9
);

INSERT INTO Receita (
	data_emissao, agendamentoID
) 
VALUES (
	'2024-09-10', 10
);

/* Tabela Receita */

INSERT INTO ItensReceita (
	receitaID, medicamentoID, quantidade, dosagem
) 
VALUES (
	1, 1, 1, '500mg'
);

INSERT INTO ItensReceita (
	receitaID, medicamentoID, quantidade, dosagem
) 
VALUES (
	1, 2, 2, '250mg'
);

INSERT INTO ItensReceita (
	receitaID, medicamentoID, quantidade, dosagem
) 
VALUES (
	2, 3, 1, '1mg'
);

INSERT INTO ItensReceita (
	receitaID, medicamentoID, quantidade, dosagem
) 
VALUES (
	2, 4, 1, '150mg'
);

INSERT INTO ItensReceita (
	receitaID, medicamentoID, quantidade, dosagem
) 
VALUES (
	3, 5, 3, '20mg'
);

INSERT INTO ItensReceita (
	receitaID, medicamentoID, quantidade, dosagem
) 
VALUES (
	3, 6, 2, '500mg'
);

INSERT INTO ItensReceita (
	receitaID, medicamentoID, quantidade, dosagem
) 
VALUES (
	4, 7, 4, '1g'
);

INSERT INTO ItensReceita (
	receitaID, medicamentoID, quantidade, dosagem
) 
VALUES (
	5, 8, 1, '10mg'
);

INSERT INTO ItensReceita (
	receitaID, medicamentoID, quantidade, dosagem
) 
VALUES (
	6, 9, 3, '250mg'
);

INSERT INTO ItensReceita (
	receitaID, medicamentoID, quantidade, dosagem
) 
VALUES (
	6, 10, 5, '5mg'
);
