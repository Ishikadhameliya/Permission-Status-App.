import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Widget permission({required String name}) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      height: 80,
      width: double.infinity,
      child: Card(
        color: Colors.blue.shade200,
        child: Container(
          height: 160,
          width: 160,
          alignment: Alignment.center,
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Permission App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                openAppSettings();
              });
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () async {
                PermissionStatus res = await Permission.location.request();
                setState(() {
                  if (res == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Location is granted"),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.permanentlyDenied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Location is permanently Denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.denied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Location is denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.restricted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Location is restricted"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  }
                });
              },
              child: permission(name: "location"),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                PermissionStatus res = await Permission.phone.request();
                setState(() {
                  if (res == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("phone is granted"),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.permanentlyDenied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("phone is permanently Denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.denied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("phone is denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.restricted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("phone is restricted"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  }
                });
              },
              child: permission(name: "phone"),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                PermissionStatus res = await Permission.camera.request();
                setState(() {
                  if (res == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("videos is granted"),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.permanentlyDenied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("videos is permanently Denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.denied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("videos is denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.restricted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("videos is restricted"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  }
                });
              },
              child: permission(name: "videos"),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                PermissionStatus res = await Permission.storage.request();
                setState(() {
                  if (res == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("storage is granted"),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.permanentlyDenied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("storage is permanently Denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.denied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("storage is denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.restricted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("storage is restricted"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  }
                });
              },
              child: permission(name: "storage"),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                PermissionStatus res =
                    await Permission.bluetoothConnect.request();
                setState(() {
                  if (res == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("bluetoothConnect is granted"),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.permanentlyDenied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("bluetoothConnect is permanently Denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.denied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("bluetoothConnect is denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.restricted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("bluetoothConnect is restricted"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  }
                });
              },
              child: permission(name: "bluetooth"),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                PermissionStatus res = await Permission.calendar.request();
                setState(() {
                  if (res == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("calendar is granted"),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.permanentlyDenied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("calendar is permanently Denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.denied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("calendar is denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.restricted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("calendar is restricted"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  }
                });
              },
              child: permission(name: "calendar"),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                PermissionStatus res = await Permission.sms.request();
                setState(() {
                  if (res == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("sms is granted"),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.permanentlyDenied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("sms is permanently Denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.denied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("sms is denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.restricted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("sms is restricted"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  }
                });
              },
              child: permission(name: "sms"),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                PermissionStatus res = await Permission.microphone.request();
                setState(() {
                  if (res == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("microphone is granted"),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.permanentlyDenied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("microphone is permanently Denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.denied) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("microphone is denied"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  } else if (res == PermissionStatus.restricted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("microphone is restricted"),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating));
                  }
                });
              },
              child: permission(name: "microphone"),
            ),
          ],
        ),
      ),
    );
  }
}
