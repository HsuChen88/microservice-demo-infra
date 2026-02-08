CREATE TABLE IF NOT EXISTS catalog_papers (
    id UUID PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    author VARCHAR(300) NOT NULL,
    abstract_text TEXT,
    status VARCHAR(50),
    created_at TIMESTAMP,
    synced_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
