CREATE TABLE auth_group (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE auth_group_permissions (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    group_id INT NOT NULL,
    permission_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES auth_group(id),
    FOREIGN KEY (permission_id) REFERENCES auth_permission(id)
);

CREATE TABLE auth_permission (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    content_type_id INT NOT NULL,
    codename NVARCHAR(100) NOT NULL,
    name NVARCHAR(255) NOT NULL,
    FOREIGN KEY (content_type_id) REFERENCES django_content_type(id)
);

CREATE TABLE django_admin_log (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    object_id TEXT NULL,
    object_repr NVARCHAR(200) NOT NULL,
    action_flag SMALLINT UNSIGNED NOT NULL CHECK (action_flag >= 0),
    change_message TEXT NOT NULL,
    content_type_id INT NULL,
    user_id BIGINT NOT NULL,
    action_time DATETIME NOT NULL,
    FOREIGN KEY (content_type_id) REFERENCES django_content_type(id),
    FOREIGN KEY (user_id) REFERENCES usuarios_users(id)
);

CREATE TABLE django_content_type (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    app_label NVARCHAR(100) NOT NULL,
    model NVARCHAR(100) NOT NULL
);

CREATE TABLE django_migrations (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    app NVARCHAR(255) NOT NULL,
    name NVARCHAR(255) NOT NULL,
    applied DATETIME NOT NULL
);

CREATE TABLE django_session (
    session_key NVARCHAR(40) NOT NULL PRIMARY KEY,
    session_data TEXT NOT NULL,
    expire_date DATETIME NOT NULL
);

CREATE TABLE pontocoleta_pontocoletas (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    nome NVARCHAR(40) NOT NULL,
    endereco NVARCHAR(40) NOT NULL,
    telefone NVARCHAR(40) NOT NULL,
    bairro NVARCHAR(40) NOT NULL
);

CREATE TABLE reciclagem_categoria (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    titulo NVARCHAR(40) NOT NULL
);

CREATE TABLE reciclagem_imagem (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    produto_id BIGINT NOT NULL,
    imagem NVARCHAR(100) NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES reciclagem_produto(id)
);

CREATE TABLE reciclagem_produto (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    nome NVARCHAR(40) NOT NULL,
    quantidade FLOAT NOT NULL,
    preco_compra FLOAT NOT NULL,
    preco_venda FLOAT NOT NULL,
    categoria_id BIGINT NULL,
    FOREIGN KEY (categoria_id) REFERENCES reciclagem_categoria(id)
);

CREATE TABLE usuarios_users (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    password NVARCHAR(128) NOT NULL,
    last_login DATETIME NULL,
    is_superuser BIT NOT NULL,
    username NVARCHAR(150) NOT NULL UNIQUE,
    first_name NVARCHAR(150) NOT NULL,
    last_name NVARCHAR(150) NOT NULL,
    email NVARCHAR(254) NOT NULL,
    is_staff BIT NOT NULL,
    is_active BIT NOT NULL,
    date_joined DATETIME NOT NULL,
    permissao CHAR(1) NOT NULL
);

CREATE TABLE usuarios_users_groups (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    users_id BIGINT NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY (users_id) REFERENCES usuarios_users(id),
    FOREIGN KEY (group_id) REFERENCES auth_group(id)
);

CREATE TABLE usuarios_users_user_permissions (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    users_id BIGINT NOT NULL,
    permission_id INT NOT NULL,
    FOREIGN KEY (users_id) REFERENCES usuarios_users(id),
    FOREIGN KEY (permission_id) REFERENCES auth_permission(id)
);
