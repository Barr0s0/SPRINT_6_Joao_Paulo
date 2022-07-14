from urllib import request
from wsgiref.util import request_uri
import requests as req
from faker import Faker

headers = {"Accept": "application/json"}
faker = Faker()

def Get_Endpoint_Usuarios_Tantas_Vezes(vezes):
    lista = []
    for vez in range(0, vezes):
        r = req.get("http://localhost:3000/usuarios")
        para_json = r.json()
        lista.append(para_json)
    return lista

def Pegar_Quantidade_De_Usuarios_Cadastrados():
    r = req.get("http://localhost:3000/usuarios")
    request_json = r.json()

    return  request_json["quantidade"]

def Pegar_Quantidade_De_Produtos():
    r = req.get("http://localhost:3000/produtos")
    request_json = r.json()

    return request_json["quantidade"]

def Criar_Usuarios(users):
    lista = []
    for i in range(0,users):
        r = req.post("http://localhost:3000/usuarios",data= {"nome": faker.name(), "email": faker.email(), "password": faker.password(), "administrador": "true"})
        para_json = r.json()
        lista.append(para_json)
    return lista


