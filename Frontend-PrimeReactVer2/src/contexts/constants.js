export const apiUrl =
  process.env.NODE_ENV !== "production"
    ? "http://localhost:1486"
    : "https://sleepy-inlet-56101.herokuapp.com/api";

export const LOCAL_STORAGE_TOKEN_NAME = ".AspNet.ApplicationCookie";

export const POSTS_LOADED_SUCCESS = 'POSTS_LOADED_SUCCESS'
export const POSTS_LOADED_FAIL = 'POSTS_LOADED_FAIL'
export const ADD_POST = 'ADD_POST'
export const DELETE_POST = 'DELETE_POST'
export const UPDATE_POST = 'UPDATE_POST'
export const FIND_POST = 'FIND_POST'
export const access_token = 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqb2huLmRvZUBleGFtcGxlLmNvbSIsImlhdCI6MTY4NzcwNzM5NiwiZXhwIjoxNjg4NTcxMzk2fQ.LZACAn7n7VdqSHnElgFOBzI0D5v81_g5hF20TkiPMz9NM88wTDlenWGhFirEzjHtYSr27TBRPIcUyM4tkoZb3Q'

