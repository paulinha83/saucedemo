from faker import Faker
fake = Faker()

def factory_usuarioFaker():
    user = {

        "name": fake.first_name(),
        "senha": "secret_sauce"    
    }
    return user


def factory_usuariook():
    user = {

        "name":"standard_user",
        "senha": "secret_sauce"
    }
    return user



def factory_usuarioBloqueado():
    user = {

        "name":"locked_out_user",
        "senha": "secret_sauce"
    }
    return user

def factory_usuarioProblem():
    user = {

        "name":"problem_user",
        "senha": "secret_sauce"
    }
    return user

def factory_usuarioPerformance():
    user = {

        "name":"performance_glitch_user",
        "senha": "secret_sauce"
    }
    return user

def factory_prt_Onesie():
    user = {

        "name":"Sauce Labs Onesie",
        "descrição": "Rib snap infant onesie for the junior automation engineer in development. Reinforced 3-snap bottom closure, two-needle hemmed sleeved and bottom won't unravel.",
        "valor":"$ 7.99"
    }
    return user


