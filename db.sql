CREATE TABLE TRADER(
    traderID INT PRIMARY KEY NOT NULL
    first_name VARCHAR(64);
    last_name VARCHAR(64);
    user_name VARCHAR(64);
    password varchar(64);
    email varchar(128);
    confirmation_code varchar(128);
    time_registered timestamp;
    time_confirmed timestamp;
    country_id INT ;
    preferred_currency_id INT;
    CONSTRAINT FK_country FOREIGN KEY (country_id)
    REFERENCES country(id);
    CONSTRAINT FK_currency FOREIGN KEY (preferred_currency_id)
    REFERENCES currency(id);

)

CREATE TABLE CURRENCY(
    currency_id INT PRIMARY KEY NOT NULL;
    CODE VARCHAR(8);
    CURRENCY_NAME VARCHAR(128);
    IS_ACTIVE boolean;
    is_base_currency boolean;

)


CREATE TABLE PRICE(
    id INT PRIMARY KEY NOT NULL;
    item_id INT;
    currency_id INT;
    buy decimal(16,6);
    sell decimal(16,6);
    ts timestamp;
)

CREATE TABLE COUNTRY(
    id INT PRIMARY KEY NOT NULL;
    country_name VARCHAR(128);
)

