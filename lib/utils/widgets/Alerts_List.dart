import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/notification_controller.dart';

class Alerts extends StatefulWidget {
  const Alerts({Key? key}) : super(key: key);

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  final notificationController = Get.put(NotificationController());

  @override
  void initState() {
    super.initState();
    notificationController.fetchUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<NotificationController>(
        builder: (controller) {
          if (controller.userDataList == null) {
            return Center(child: CircularProgressIndicator());
          } else {
            return FutureBuilder<List<dynamic>>(
              future: controller.GetRequest(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var lawyer = snapshot.data![index]['lawyer'];
                      var lawyerName =
                          '${lawyer['firstName']} ${lawyer['lastName']}';
                      var lawyerEmail = lawyer['email'] ?? '';
                      var lawyerProfileImage = lawyer['profileImage'] ?? '';
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(lawyerProfileImage),
                        ),
                        title: Text(lawyerName),
                        subtitle: Text(lawyerEmail),
                        trailing: Icon(
                          Icons.alarm,
                          color: Colors.purple[800],
                        ),
                        onTap: () {
                          // Add any action you want to perform when ListTile is tapped
                        },
                      );
                    },
                  );
                }
              }),
            );
          }
        },
      ),
    );
  }
}
