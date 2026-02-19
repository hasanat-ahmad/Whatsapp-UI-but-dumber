import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: Text("WhatsApp"),
          centerTitle: false,
          backgroundColor: Color(0xff0ba142),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 3,
                  child: TextButton(onPressed: () {}, child: Text("New Group")),
                ),

                PopupMenuItem(
                  value: 3,
                  child: TextButton(onPressed: () {}, child: Text("Setting")),
                ),

                PopupMenuItem(
                  value: 3,
                  child: TextButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    child: Text("Log Out"),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
            tabs: [
              // Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text("Chats")),
              Tab(child: Text("Status")),
              Tab(child: Text("Calls")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Text("Camera"),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/v2/D4D03AQGEwuXxFV_IIQ/profile-displayphoto-crop_800_800/B4DZkl1i6dIcAI-/0/1757276420506?e=1773273600&v=beta&t=8n-Y_arem4mH_bi4dgbX-lV9KdGM55iJ_ZSEr1GYtEE',
                  ),
                ),
                title: Text("Hasanat Ahmad"),
                subtitle: Text("Snga ye khirana?"),
                trailing: Text('6:56 pm'),
              ),
            ),

            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/v2/D4D03AQGEwuXxFV_IIQ/profile-displayphoto-crop_800_800/B4DZkl1i6dIcAI-/0/1757276420506?e=1773273600&v=beta&t=8n-Y_arem4mH_bi4dgbX-lV9KdGM55iJ_ZSEr1GYtEE',
                ),
              ),
              title: Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Add to my status"),
              trailing: CircleAvatar(child: Icon(Icons.camera_alt)),
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/v2/D4D03AQGEwuXxFV_IIQ/profile-displayphoto-crop_800_800/B4DZkl1i6dIcAI-/0/1757276420506?e=1773273600&v=beta&t=8n-Y_arem4mH_bi4dgbX-lV9KdGM55iJ_ZSEr1GYtEE',
                  ),
                ),
                title: Text("Hasanat Ahmad"),
                subtitle: Text(
                  index % 2 == 0
                      ? "You missed this audio call"
                      : "You missed this video call",
                ),
                trailing: Icon(index % 2 == 0 ? Icons.phone : Icons.video_call),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
