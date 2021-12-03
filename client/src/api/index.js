import axios from 'axios'
const isProduction = process && process.env && process.env.NODE_ENV === 'production'
console.log('isProduction: ', isProduction)
const api = axios.create({
    baseURL:  isProduction ? 'http://portal.movie-app.com/api' : 'http://localhost:3000/api'
})
export const insertMovie = payload => api.post(`/movie`, payload)
export const getAllMovies = () => api.get(`/movies`)
export const updateMovieById = (id, payload) => api.put(`/movie/${id}`, payload)
export const deleteMovieById = id => api.delete(`/movie/${id}`)
export const getMovieById = id => api.get(`/movie/${id}`)


const apis = {
    insertMovie,
    getAllMovies,
    updateMovieById,
    deleteMovieById,
    getMovieById,
}

export default apis
