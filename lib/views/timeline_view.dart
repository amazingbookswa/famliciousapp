import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class TimelineView extends StatelessWidget {
  const TimelineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TimeLine"),
        actions: [
          IconButton(
            icon: Icon(UniconsLine.plus_square),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://picsum.photos/200/300?random=${index + 1}"))),
                    );
                  });
            },
            child: Card(
              elevation: 5,
              shadowColor: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://picsum.photos/200/300?random=${index + 1}'),
                      ),
                      title: Text("Francis Yelfaari"),
                      subtitle: Text('1 year ago'),
                      trailing: Icon(Icons.more_horiz),
                    ),
                    Text(
                        'That was the first time i flew out of Ghana in ten years'),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        "https://picsum.photos/200/300?random=${index + 1}",
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(UniconsLine.thumbs_up),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(UniconsLine.comment_message)
                          ],
                        ),
                        Icon(UniconsLine.telegram_alt)
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 20,
      ),
    );
  }
}
