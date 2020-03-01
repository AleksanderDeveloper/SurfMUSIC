//
//  TextsProject.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

class TextsProject: NSObject {
	
	struct Title {
    static let empty      = ""
    static let noJSON     = "ОШИБКА"
    static let noNetwork  = "НЕТ ИНТЕРНЕТА"
    static let noMessage  = "НЕТ СООБЩЕНИЙ"
    static let emptyField = "ОШИБКА"
    static let sendEmail  = "ОТПРАВЛЕН"
    static let tryEnded   = "КОЛЕСО"
  }
  struct Message {
    static let empty      = ""
    static let noNetwork  = "Отсутствует подключение к сети, подключите Ваше устройство и попробуйте снова"
    static let noJSON     = "Извините произошла ошибка получения данных"
    static let noMessage  = "У Вас нет не одного сообщения"
    static let emptyField = "Введите корректные данные и попробуйте снова"
    static let sendEmail  = "Ваш email отправлен"
    static let tryEnded   = "Количество попыток закончилось"
  }
	
	struct Worning {
		static let some = ""
	}
	
	struct Simple {
		static let some = ""
	}
	
  subscript(textType: TextType, textAlert: TextAlert) -> String {
    switch (textType, textAlert) {
      //Empty
      case (.Title, .empty):
        return TextsProject.Title.empty
      case (.Message, .empty):
        return TextsProject.Message.empty
      //No Network
      case (.Title, .noNetwork):
        return TextsProject.Title.noNetwork
      case (.Message, .noNetwork):
        return TextsProject.Message.noNetwork
      //noJSON
      case (.Title, .noJSON):
        return TextsProject.Title.noJSON
      case (.Message, .noJSON):
        return TextsProject.Message.noJSON
      //No Message
      case (.Title, .noMessage):
        return TextsProject.Title.noMessage
      case (.Message, .noMessage):
        return TextsProject.Message.noMessage
      //No Empty text field
      case (.Title, .emptyField):
        return TextsProject.Title.emptyField
      case (.Message, .emptyField):
        return TextsProject.Message.emptyField
      //Send email
      case (.Title, .sendEmail):
        return TextsProject.Title.sendEmail
      case (.Message, .sendEmail):
        return TextsProject.Message.sendEmail
      //Send email
      case (.Title, .tryEnded):
        return TextsProject.Title.tryEnded
      case (.Message, .tryEnded):
        return TextsProject.Message.tryEnded
      default:
        return ""
    }
  }
	subscript(text: TextSimple) -> String {
		switch (text) {
			//Empty
			case (.some):
				return TextsProject.Simple.some
		}
	}
}

enum TextType {
  case Title
  case Message
  case Project
}
enum TextAlert {
  case empty
  case noJSON
  case noNetwork
  case noSendedEmail
  case yesSendedEmail
  case inputEmail
  case emptyField
  case noMessage
  case sendEmail
  case tryEnded
}
enum TextSimple {
  case some
}






