import 'package:flutter/material.dart';
import 'package:roomie/widgets/commonalities.dart';
import 'package:roomie/widgets/difference.dart';

import '../classes/random_color.dart';

class SuggestedProfile extends StatelessWidget {
  String major, studentNumber, dormitoryInfo, message;
  Color color = randomColor();
  SuggestedProfile({
    super.key,
    required this.color,
    this.major = "전공",
    this.studentNumber = "00",
    this.dormitoryInfo = "생활관",
    this.message = "간단한 메시지",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      width: 300,
      height: 450,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  major,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Color(0xff8e8e93),
                  ),
                ),
                Text(
                  studentNumber,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Color(0xff8e8e93),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  dormitoryInfo,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xff8e8e93),
                  ),
                ),
                Text(
                  ": $message",
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xff8e8e93),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Commonalities(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Difference(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => print("remove $color"),
                    icon: const Icon(
                      Icons.person_remove,
                      color: Color(0xffe3242b),
                    ),
                  ),
                  profileButton(const Color(0xff2832c2),
                      Icons.description_rounded, "프로필"),
                  profileButton(const Color(0xff028a0f),
                      Icons.chat_bubble_rounded, "새 채팅"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TextButton profileButton(
      Color backgroundColor, IconData iconData, String labelText) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 5,
      ),
      onPressed: () => print("new chat with $color"),
      icon: Icon(
        iconData,
        color: Colors.white,
      ),
      label: Text(
        labelText,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
