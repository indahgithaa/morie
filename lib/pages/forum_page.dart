import 'package:flutter/material.dart';

class Topic {
  String username;
  String userPicturePath;
  String userStatus;
  String title;
  String content;
  String imagePath;

  Topic(this.username, this.userPicturePath, this.userStatus, this.title, this.content, this.imagePath);
}

class ForumPage extends StatelessWidget {
  List<Topic> topics = [
    Topic('@sitied', 'assets/sitied_profpic.png', 'soon to be mom', 'Pregnancy Update, Yoga stuff.', 'Just wanted to share a little snippet of my pregnancy journey intertwined with the soothing embrace of yoga. These prenatal yoga sessions have become my sanctuary, a sacred time where I connect with both my body and the tiny soul growing within.', 'assets/yoga_pic.png'),
    Topic('@mum', 'assets/mum_profpic.png', 'Average housewife', 'Delicious healthy recipe for mom! :D', 'Just wanted to drop a quick note from the heart of daily homemaker life. Juggling chores, meals, and the never-ending laundry feels like a marathon sometimes, but there\'s a unique magic in it all. From the sizzling sounds in the kitchen to the cozy chaos of family life, these are the real moments that make a home.', ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Container(
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
            ),
            SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 15, 21),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 4, 0),
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Color(0xffd9d9d9),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/mom_profpic.png'),
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
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintText: 'Write something...',
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.4375,
                              color: Color(0xff000000),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 7.5),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 14.5, 0),
                height: 28,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      width: 38,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff6dadf9),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'All',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.6428571429,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 121, 0),
                      width: 71,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff6dadf9),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Recent',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.6428571429,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 110,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff6dadf9),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Filter topics',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.6428571429,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Expanded(
          child: ListView.builder(
            itemCount: topics.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffD2D2D2),
                      width: 5.0,
                    ),
                  ),
                ),
                child: ListTile(
                  title: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(topics[index].userPicturePath),
                              radius: 20,
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      topics[index].username,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Follow',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  topics[index].userStatus,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          topics[index].title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(topics[index].content),
                      if (topics[index].imagePath.isNotEmpty)
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Image.asset(topics[index].imagePath),
                        ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TopicDetailsPage(topic: topics[index]),
                      ),
                    );
                  },
                ),
              );
            },
          ),
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
        title: Text('Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(topic.userPicturePath),
                    radius: 20,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            topic.username,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        topic.userStatus,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                topic.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                topic.content,
              ),
              if (topic.imagePath.isNotEmpty)
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset(topic.imagePath),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
