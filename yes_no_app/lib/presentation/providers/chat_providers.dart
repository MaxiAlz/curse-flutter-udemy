import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/helpers/get_yes_no_aswer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  // define el manejo del escroll y luego lo usa en el widget de chat

  final ScrollController chatController = ScrollController();
  final GetYesNoAswer getYesNoAswer = GetYesNoAswer();

  // Crea la lista de mensajes que luego sera utilizada en cada widget
  List<Message> messageList = [
    Message(text: 'Hola jefa!', fromWho: FromWho.me),
    Message(text: 'Ya terminaste?', fromWho: FromWho.me),
  ];

  Future<void> herReply() async {
    final herMessage = await getYesNoAswer.getAnswer();

    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  // funcion para enviar los mensajes
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMEssage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMEssage);

    if (text.endsWith('?')) {
      await herReply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  //Funcion para mover el scroll hasta abajo
  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatController.animateTo(chatController.position.maxScrollExtent,
        duration: const Duration(microseconds: 300), curve: Curves.easeOut);
  }
}
