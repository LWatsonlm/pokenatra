DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name TEXT,
  cp INTEGER,
  poke_type VARCHAR(255),
  img_url TEXT
);
