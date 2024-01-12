import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Topic {
  final String title;
  final String content;

  Topic(this.title, this.content);
}

class ForumPage extends StatelessWidget {
  final List<Topic> topics = [
    Topic('Topic 1', 'Content of Topic 1'),
    Topic('Topic 2', 'Content of Topic 2'),
    Topic('Topic 3', 'Content of Topic 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 0),
              child: Text(
                'Your answer is everything.\nStay linked - stay resilient.',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 1,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              margin:  EdgeInsets.fromLTRB(20, 10, 15, 21),
              width:  double.infinity,
              child:  
              Row(
                crossAxisAlignment:  CrossAxisAlignment.center,
                children:  [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 1, 4, 0),
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color(0xffd9d9d9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/mom_profpic.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 12.5, 5, 11.5),
                    width: 304,
                    height: 47,
                    decoration: BoxDecoration(
                      color: Color(0xffaed3ff),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Write something...',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.4375,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: topics.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(topics[index].title),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TopicDetailsPage(topic: topics[index]),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopicDetailsPage extends StatelessWidget {
  final Topic topic;

  TopicDetailsPage({required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              topic.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(topic.content),
          ],
        ),
      ),
    );
  }
}
