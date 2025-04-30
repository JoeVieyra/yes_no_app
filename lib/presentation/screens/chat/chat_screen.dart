import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor:(Color.fromARGB(255, 224, 196, 112)),
       appBar: AppBar(
        backgroundColor: Color.fromARGB(19, 96, 6, 124),
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://image.enjoymovie.net/Ke-Zpcq8gNP6KMDHAZE2RPiw0oc=/256x256/smart/core/p/b7AlP1LXwK.jpg'),
          ),
        ),
       title: Text('Mutiny'),
      //  centerTitle: true,
       ),
       body: _ChatView(),
       );
  }
}

class _ChatView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
        children: [
          
          Expanded(child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index){
          return const MyMessageBubble();
          }
          )
          ),
        
          Text('hola'),
          Text('mundo')
        ],
        
        
        ),
      ),
    );
  }
}
