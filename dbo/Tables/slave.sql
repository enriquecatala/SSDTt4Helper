
CREATE TABLE dbo.slave
(
    id_slave INT IDENTITY PRIMARY KEY,
    id_master INT NOT NULL
        FOREIGN KEY (id_master) REFERENCES dbo.master (id_master),
    val_slave BIGINT
);