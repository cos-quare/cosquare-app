import 'package:cosquare_app/theme/style/colors.dart';
import 'package:flutter/material.dart';

class MatchingCard extends StatelessWidget {
  const MatchingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        // height: 400,
        color: kCosGray800,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                        "https://www.personality-insights.com/wp-content/uploads/2017/12/default-profile-pic-e1513291410505.jpg"),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: '@june_129',
                          style: TextStyle(fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(text: ' 님이 매칭을 열었습니다.'),
                          ],
                        ),
                      ),
                      Text('30분 전', style: TextStyle(color: kCosGray500)),
                    ],
                  ),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_rounded)),
                ],
              ),
              SizedBox(height: 20),
              Text('12월 10일에 촬영 가능한 분 연락주세용. 인천 부평역 근처고 스튜디오는 예약했어요! 많관부', style: TextStyle(fontSize: 16)),
              SizedBox(height: 16),
              textIconWidget(icon: Icons.calendar_month, text: '22.12.10 (토) 13:00 - 16:00'),
              SizedBox(height: 4),
              textIconWidget(icon: Icons.location_on_outlined, text: '클레드 스튜디오'),
              SizedBox(height: 4),
              textIconWidget(icon: Icons.camera_alt_outlined, text: '사진사 1/1'),
              SizedBox(height: 4),
              textIconWidget(icon: Icons.person_outline, text: '코스어 1/2'),
              SizedBox(height: 16),
              Divider(),
              SizedBox(height: 16),
              Row(
                children: [
                  const Spacer(),
                  Text('5일 남았습니다.'),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('참여하기'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row textIconWidget({required IconData icon, required String text}) {
    return Row(
      children: [
        Icon(icon, size: 16),
        SizedBox(width: 10),
        Text(text, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
