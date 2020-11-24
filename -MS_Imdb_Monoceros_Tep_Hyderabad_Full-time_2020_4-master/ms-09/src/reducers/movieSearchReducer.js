let initialState = {
  movies: [
    {
      Title: "Thor",
      Year: "2011",
      imdbID: "tt0800369",
      Type: "movie",
      Poster:
        "https://m.media-amazon.com/images/M/MV5BOGE4NzU1YTAtNzA3Mi00ZTA2LTg2YmYtMDJmMThiMjlkYjg2XkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_SX300.jpg",
    },
    {
      Title: "Thor: The Dark World",
      Year: "2013",
      imdbID: "tt1981115",
      Type: "movie",
      Poster:
        "https://m.media-amazon.com/images/M/MV5BMTQyNzAwOTUxOF5BMl5BanBnXkFtZTcwMTE0OTc5OQ@@._V1_SX300.jpg",
    },
    {
      Title: "Thor: Ragnarok",
      Year: "2017",
      imdbID: "tt3501632",
      Type: "movie",
      Poster:
        "https://m.media-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_SX300.jpg",
    },
    {
      Title: "Team Thor",
      Year: "2016",
      imdbID: "tt6016776",
      Type: "movie",
      Poster:
        "https://m.media-amazon.com/images/M/MV5BMmY4NzA2OGUtYTc0MS00OTc0LThhYjAtZTJkMTI2MTgyNDY0XkEyXkFqcGdeQXVyNDQ5MDYzMTk@._V1_SX300.jpg",
    },
    {
      Title: "Thor: Tales of Asgard",
      Year: "2011",
      imdbID: "tt1667903",
      Type: "movie",
      Poster:
        "https://m.media-amazon.com/images/M/MV5BMTcxOTU4NzIxMV5BMl5BanBnXkFtZTcwNzE3NjAxNQ@@._V1_SX300.jpg",
    },
    {
      Title: "Team Thor: Part 2",
      Year: "2017",
      imdbID: "tt6599818",
      Type: "movie",
      Poster:
        "https://m.media-amazon.com/images/M/MV5BOTJkYmFkM2ItOGIwMS00YWRhLTg5ZGQtNDA0ZjcwNzA3ZjQxXkEyXkFqcGdeQXVyNDQ5MDYzMTk@._V1_SX300.jpg",
    },
    {
      Title: "Almighty Thor",
      Year: "2011",
      imdbID: "tt1792794",
      Type: "movie",
      Poster:
        "https://m.media-amazon.com/images/M/MV5BMTcwNjI5MTAzNF5BMl5BanBnXkFtZTcwNTcyOTIwNQ@@._V1_SX300.jpg",
    },
    {
      Title: "Thor: Hammer of the Gods",
      Year: "2009",
      imdbID: "tt1260572",
      Type: "movie",
      Poster:
        "https://m.media-amazon.com/images/M/MV5BNTFkMDA5ODEtMTQ1NC00NGRhLWE3ZGQtOGE5ZGJkMGI1ZDI5XkEyXkFqcGdeQXVyMjI1NjEzNjg@._V1_SX300.jpg",
    },
    {
      Title: "Thor: Legend of the Magical Hammer",
      Year: "2011",
      imdbID: "tt1241721",
      Type: "movie",
      Poster:
        "https://m.media-amazon.com/images/M/MV5BMTYxOTI1OTI0NF5BMl5BanBnXkFtZTgwMDQzMjcwMzE@._V1_SX300.jpg",
    },
  ],
  movieInfo: {},
  error: "",
};

export default (state = initialState, action) => {
  switch (action.type) {
    case "SEARCH_MOVIES":
      return {
        ...state,
        movies: action.payload.Search,
        error: "",
      };
    case "MOVIE_INFO":
      return {
        ...state,
        movieInfo: action.payload,
      };
    case "REMOVE_INFO":
      return {
        ...state,
        movieInfo: action.payload,
      };
    case "REMOVE_MOVIES":
      return {
        ...state,
        movies: action.payload,
      };
    case "SET_ERROR":
      return {
        ...state,
        error: action.payload,
      };

    default:
      return state;
  }
};
