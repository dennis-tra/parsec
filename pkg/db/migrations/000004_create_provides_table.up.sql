BEGIN;

CREATE TABLE provides
(
    id         INT GENERATED ALWAYS AS IDENTITY,
    node_id    INT         NOT NULL,
    rt_size    INT         NOT NULL,
    duration   FLOAT       NOT NULL,
    cid        TEXT        NOT NULL,
    error      TEXT,
    created_at TIMESTAMPTZ NOT NULL,

    CONSTRAINT fk_provides_node
        FOREIGN KEY (node_id)
            REFERENCES nodes (id),

    PRIMARY KEY (id)
);

CREATE INDEX idx_provides_created_at ON provides (created_at);

COMMIT;

