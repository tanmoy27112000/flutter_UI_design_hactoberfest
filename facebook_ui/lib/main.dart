import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Facebook",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Search bar
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Stories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  makeStory(
                    storyImage: 'assets/images/story/story-1.jpg',
                    userImage: 'assets/images/aatik-tasneem.jpg',
                    userName: 'Aatik Tasneem',
                  ),
                  makeStory(
                    storyImage: 'assets/images/story/story-3.jpg',
                    userImage: 'assets/images/aiony-haust.jpg',
                    userName: 'Aiony Haust',
                  ),
                  makeStory(
                    storyImage: 'assets/images/story/story-4.jpg',
                    userImage: 'assets/images/averie-woodard.jpg',
                    userName: 'Averie Woodard',
                  ),
                  makeStory(
                    storyImage: 'assets/images/story/story-5.jpg',
                    userImage: 'assets/images/azamat-zhanisov.jpg',
                    userName: 'Azamat Zhanisov',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Feeds
            makeFeed(
              userName: 'Aiony Haust',
              userImage: 'assets/images/aiony-haust.jpg',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage: 'assets/images/story/story-2.jpg',
            ),
            makeFeed(
              userName: 'Azamat Zhanisov',
              userImage: 'assets/images/azamat-zhanisov.jpg',
              feedTime: '3 mins ago',
              feedText:
                  "All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
              feedImage: '',
            ),
            makeFeed(
              userName: 'Azamat Zhanisov',
              userImage: 'assets/images/azamat-zhanisov.jpg',
              feedTime: '3 mins ago',
              feedText:
                  "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
              feedImage: 'assets/images/averie-woodard.jpg',
            ),
          ],
        ),
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 100,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              userName,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          userName,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          feedTime,
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Text(
              feedText,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                height: 1.5,
                letterSpacing: .7,
              ),
            ),
          ),
          feedImage != ''
              ? Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(feedImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5, 0),
                      child: makeLove(),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "2.5K",
                      style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                    )
                  ],
                ),
                Text(
                  "400 Comments",
                  style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                makeLikeButton(isActive: true),
                makeCommentButton(),
                makeShareButton(),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(
          Icons.thumb_up,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(
          Icons.favorite,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              "Like",
              style: TextStyle(
                color: isActive ? Colors.blue : Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.chat,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              "Share",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
