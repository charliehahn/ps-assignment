/*
These will land in the public schema for convenience
*/

CREATE TABLE IF NOT EXISTS shops (
    name        VARCHAR,
    shop_id     VARCHAR,
    industry    VARCHAR,
    created_at  TIMESTAMP
);

CREATE TABLE IF NOT EXISTS customers (
    shop_id         VARCHAR,
    customer_id     BIGINT,
    country_code    VARCHAR,
    country_name    VARCHAR,
    city            VARCHAR,
    created_at      TIMESTAMP
);

CREATE TABLE IF NOT EXISTS orders (
    order_id        BIGINT,
    customer_id     BIGINT,
    shop_id         VARCHAR,
    created_at      TIMESTAMP,
    cancelled_at    VARCHAR,
    currency        VARCHAR,
    total_price     VARCHAR,
    total_tax       VARCHAR
);

CREATE TABLE IF NOT EXISTS messages (
    id                  INTEGER,
    shop_id             VARCHAR,
    is_international    BOOLEAN,
    customer_id         BIGINT,
    is_unsubscribed     BOOLEAN,
    includes_gif        BOOLEAN,
    created_at          TIMESTAMP
);

CREATE TABLE IF NOT EXISTS message_links (
    id                  INTEGER,
    link_id             INTEGER,
    sent_message_id     INTEGER,
    created_at          TIMESTAMP
);

CREATE TABLE IF NOT EXISTS links (
    id          INTEGER,
    clicks      INTEGER,
    created_at  TIMESTAMP,
    updated_at  TIMESTAMP
);

CREATE TABLE IF NOT EXISTS link_clicks (
    id          INTEGER,
    link_id     INTEGER,
    user_agent  VARCHAR,
    created_at  TIMESTAMP
);

CREATE TABLE IF NOT EXISTS attribution (
    id                  INTEGER,
    order_id            BIGINT,
    shop_id             VARCHAR,
    amount_in_cents     INTEGER,
    sent_message_id     INTEGER,
    type                VARCHAR,
    created_at          TIMESTAMP
);
