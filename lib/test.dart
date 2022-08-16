/*
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            child: Text(
              'Log Out',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            onPressed: () {
              */
/*_auth.signOut();
              Navigator.pop(context);*//*

            },
          ),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessageStream(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      minLines: 1,
                      controller: messageTextController,
                      onChanged: (value) {
                        setState(() {
                          isSendButtonVisible = true;
                        });
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FlatButton(
                      onPressed: () async {
                        timestamp = Timestamp.now();
                        messageTextController.clear();
                        _firestore.collection('messages').add({
                          'text': messageText,
                          'sender': loggedInUser.email,
                          'time': await timestamp,
                        });
                      },
                      child: Visibility(
                        visible: isSendButtonVisible,
                        child: Icon(
                          Icons.send,
                          color: Colors.lightBlueAccent,
                          size: 30,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );;
  }
}

class MessageStream extends StatelessWidget {
  const MessageStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore
          .collection('messages')
          .orderBy('time', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        List<MessageBubble> messageBubbles = [];
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        final messages = snapshot.data!.docs;
        for (var message in messages) {
          final messageText = message['text'];
          final messageSender = message['sender'];
          final messageTime = message['time'] as Timestamp;
          final currentUser = loggedInUser.email;

          final messageBubble = MessageBubble(
            time: messageTime,
            isMe: currentUser == messageSender,
            text: messageText,
            sender: messageSender,
          ); */
/*MessageBubbleButton(
            sender: messageSender,
            text: messageText,
            time: messageTime,
            isMe: currentUser == messageSender,
          );*//*

          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: messageBubbles,
          ),
        );
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final Timestamp time;
  final bool isMe;

  MessageBubble(
      {required this.sender,
        required this.text,
        required this.isMe,
        required this.time});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              sender,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
            ),
            Material(
              borderRadius: BorderRadius.only(
                topLeft: isMe ? Radius.circular(30) : Radius.circular(0),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
                topRight: isMe ? Radius.circular(0) : Radius.circular(30),
              ),
              elevation: 5,
              // color: isMe ? Colors.lightBlueAccent : Colors.white,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: Stack(
                    children: [
                      Flexible(
                        child: Text(
                          text,
                          style: TextStyle(
                            fontSize: 15,
                            color: isMe ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Text(
                          DateFormat.Hm().format(time.toDate()),
                          style: TextStyle(
                              fontSize: 10,
                              color: isMe ? Colors.white : Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
*/
