import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
//code has to b reeview as i dont know wtf is happeneing in notes it was written by AI so make sure u know what ur doing before fucking with it
class NotesAttendance extends StatelessWidget {
  const NotesAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(

              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color(0xFFE3E2D3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Notes",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight(1000)
                  ),),Notes()
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color(0xFFE3E2D3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text("data"),
            ),
          ),
        ],
      ),
    );
  }
}



class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadNote();
  }

  Future<void> _loadNote() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString('note') ?? '';
    controller.text = saved;
  }

  Future<void> _saveNote(String text) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('note', text);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: null,
      onChanged: _saveNote,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: "Write notes...",
      ),
    );
  }
}







class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
