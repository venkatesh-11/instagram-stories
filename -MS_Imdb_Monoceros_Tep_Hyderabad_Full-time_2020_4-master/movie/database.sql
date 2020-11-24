CREATE TABLE "movies" (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(120) NOT NULL,
  "description" TEXT NOT NULL
);

CREATE TABLE "genres" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(80) NOT NULL
);

INSERT INTO "movies" ("title", "description")
VALUES 
('Avatar',  'Avatar (marketed as James Cameron''s Avatar) is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron, and stars Sam Worthington, Zoe Saldana, Stephen Lang, Michelle Rodriguez, and Sigourney Weaver. The film is set in the mid-22nd century, when humans are colonizing Pandora, a lush habitable moon of a gas giant in the Alpha Centauri star system, in order to mine the mineral unobtanium, a room-temperature superconductor. The expansion of the mining colony threatens the continued existence of a local tribe of Na''vi – a humanoid species indigenous to Pandora. The film''s title refers to a genetically engineered Na''vi body operated from the brain of a remotely located human that is used to interact with the natives of Pandora.'),
('Beauty and the Beast',  'Beauty and the Beast is a 2017 American musical romantic fantasy film directed by Bill Condon from a screenplay written by Stephen Chbosky and Evan Spiliotopoulos. Co-produced by Walt Disney Pictures and Mandeville Films, it was filmed in the UK with predominantly British principal actors. The film is a live-action remake of Disney''s 1991 animated film of the same name, itself an adaptation of Jeanne-Marie Leprince de Beaumont''s 18th-century fairy tale. The film features an ensemble cast that includes Emma Watson and Dan Stevens as the eponymous characters with Luke Evans, Kevin Kline, Josh Gad, Ewan McGregor, Stanley Tucci, Audra McDonald, Gugu Mbatha-Raw, Ian McKellen, and Emma Thompson in supporting roles.'),
('Captain Marvel',  'Captain Marvel is a 2019 American superhero film based on the Marvel Comics character Carol Danvers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the twenty-first film in the Marvel Cinematic Universe (MCU). The film is written and directed by Anna Boden and Ryan Fleck, with Geneva Robertson-Dworet also contributing to the screenplay. Brie Larson stars as Danvers, alongside Samuel L. Jackson, Ben Mendelsohn, Djimon Hounsou, Lee Pace, Lashana Lynch, Gemma Chan, Annette Bening, Clark Gregg, and Jude Law. Set in 1995, the story follows Danvers as she becomes Captain Marvel after Earth is caught in the center of a galactic conflict between two alien civilizations.'),
('Finding Nemo',  'Finding Nemo is a 2003 American computer-animated adventure film produced by Pixar Animation Studios and released by Walt Disney Pictures. Written and directed by Andrew Stanton with co-direction by Lee Unkrich, the film stars the voices of Albert Brooks, Ellen DeGeneres, Alexander Gould, and Willem Dafoe. It tells the story of the overprotective ocellaris clownfish named Marlin who, along with a regal blue tang named Dory, searches for his abducted son Nemo all the way to Sydney Harbour. Along the way, Marlin learns to take risks and comes to terms with Nemo taking care of himself.'),
('Gone Girl',  'Gone Girl is a 2014 American psychological thriller film directed by David Fincher and written by Gillian Flynn, based on her popular 2012 novel of the same title. The film stars Ben Affleck, Rosamund Pike, Neil Patrick Harris, and Tyler Perry. Set in Missouri, the story begins as a mystery that follows the events surrounding Nick Dunne (Affleck), who becomes the primary suspect in the sudden disappearance of his wife Amy (Pike).'),
('Harry Potter and the Philosopher''s Stone', 'Harry Potter and the Philosopher''s Stone (released in the United States, India and Pakistan as Harry Potter and the Sorcerer''s Stone) is a 2001 fantasy film directed by Chris Columbus and distributed by Warner Bros. Pictures. It is based on J. K. Rowling''s 1997 novel of the same name. The film is the first instalment of the Harry Potter film series and was written by Steve Kloves and produced by David Heyman. Its story follows Harry Potter''s first year at Hogwarts School of Witchcraft and Wizardry as he discovers that he is a famous wizard and begins his education. The film stars Daniel Radcliffe as Harry Potter, with Rupert Grint as Ron Weasley, and Emma Watson as Hermione Granger.'),
('James Bond: Goldfinger',  'Goldfinger is a 1964 British spy film and the third installment in the James Bond series produced by Eon Productions, starring Sean Connery as the fictional MI6 agent James Bond. It is based on the novel of the same name by Ian Fleming. The film also stars Honor Blackman as Bond girl Pussy Galore and Gert Fröbe as the title character Auric Goldfinger, along with Shirley Eaton as the iconic Bond girl Jill Masterson. Goldfinger was produced by Albert R. Broccoli and Harry Saltzman and was the first of four Bond films directed by Guy Hamilton.');

INSERT INTO "genres" ("name")
VALUES 
('Adventure'),
('Animated'),
('Biographical'),
('Comedy'),
('Disaster'),
('Drama'),
('Epic'),

CREATE TABLE "movie_genre" (
"id" SERIAL PRIMARY KEY,
"movie_id" INT REFERENCES "movies",
"genre_id" INT REFERENCES "genres");

INSERT INTO "movie_genre" ("movie_id", "genre_id")
VALUES (1,1), (1,3), (1,4), (2, 1), (3, 11), (3, 12);