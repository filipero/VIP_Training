//
//  FIrebaseService.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 17/07/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    let FAuth = Auth.auth()
}
extension Error {
    var localizedDescription: String {
        let error = self as NSError
        if error.domain == AuthErrorDomain {
            let code = AuthErrorCode(rawValue: error.code)
            return code?.description ?? "Houve um problema!"
        }
        return error.localizedDescription
    }
}

extension AuthErrorCode {
    var description: String? {
        switch self {
        case .invalidEmail:
            return "E-mail inválido"
        case .weakPassword:
            return "A senha deve ter pelo menos 6 caractéres"
        case .accountExistsWithDifferentCredential:
            return "Esta conta já existe!"
        case .captchaCheckFailed:
            return "Falha ao preencher Captcha"
        case .credentialAlreadyInUse:
            return "Credenciais já em uso"
        case .emailAlreadyInUse:
            return "O e-mail informado já está em uso"
        case .wrongPassword:
            return "Senha incorreta"
        case .userNotFound:
            return "Usuário não encontrado no sistema"
        case .userMismatch:
            return "O código de autenticação não pertence ao usuário atual"
        case .userDisabled:
            return "Usuario desabilitado"
        case .unverifiedEmail:
            return "E-mail não verificado"
        case .tooManyRequests:
            return "Pedidos demais feitos para o servidor"
        case .networkError:
            return "Erro de rede, verifique sua conexão com a internet"
        case .missingEmail:
            return "E-mail não informado"
        default:
            return "Erro genérico"
        }
    }
}
