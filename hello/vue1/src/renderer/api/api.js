import axios from 'axios'

let base = 'http://111.229.78.27:2293'

export const getHello1 = params => { return axios.get(`http://127.0.0.1:2211/mysql/`, { params: params }) }

export const getSqlQuery = params => { return axios.post(`${base}/sql/query`, params).then(res => res.data) }

export const getSqlQueries = params => { return axios.post(`${base}/sql/queries`, params).then(res => res.data) }

export const getSqlTrans = params => { return axios.post(`${base}/sql/trans`, params).then(res => res.data) }

export const crossOriginHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'Content-Type, Authorization'
}
