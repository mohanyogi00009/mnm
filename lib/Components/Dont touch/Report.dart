import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//umm i truly kinda of dont exactly get how the variable os goin out so better dont mess with it anytime soon
class Report extends StatelessWidget {
  final TextEditingController reportController;

  const Report({super.key, required this.reportController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 6, bottom: 8, left: 12, right: 12),
      padding: const EdgeInsets.only(top: 25, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFD4C85C),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Expirencing issues ??\nHave a suggestion??",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26,
              fontFamily: 'Satoshi',
              height: 1.25,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "*All your responses are totally anonymous \n*It could be regarding our Institute or the app ",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              fontFamily: 'Satoshi',
              height: 1.0,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Go Ahead, Its all yours ;",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              fontFamily: 'Satoshi',
              height: 1.0,
            ),
          ),
          ReportText(controller: reportController),
        ],
      ),
    );
  }
}

class ReportText extends StatefulWidget {
  final TextEditingController controller;

  const ReportText({super.key, required this.controller});

  @override
  State<ReportText> createState() => _ReportTextState();
}

class _ReportTextState extends State<ReportText> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLines: 5,
      decoration: const InputDecoration(
        hintText: 'Type here...',
      ),
    );
  }
}
