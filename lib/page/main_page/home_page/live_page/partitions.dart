import 'package:flutter/material.dart';
import 'package:xbilibili/entity/live_entity.dart';
import 'package:xbilibili/entity/live_player_request_model.dart';
import 'package:xbilibili/icons/bilibili_icons.dart';
import 'package:xbilibili/route/routes.dart';

import 'live_player_page.dart';

class Partitions extends StatelessWidget {
  final List<LiveDataPartition> partitions;

  Partitions(this.partitions);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: partitions.length,
      itemBuilder: (context, index) {
        return _buildPartition(context, partitions[index]);
      },
    );
  }

  Widget _buildPartition(context, LiveDataPartition partition) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.centerLeft,
            child: Text(partition.partition.name),
          ),
          GridView.count(
            shrinkWrap: true,
            childAspectRatio: 1.05,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            physics: ScrollPhysics(),
            crossAxisCount: 2,
            children: partition.lives.map((live) {
              return _buildPartitionItem(context, live);
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildPartitionItem(context, LiveDataPartitionsLife live) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(RouteName.livePlayerPage,
            arguments: LivePlayerRequestModel(
              roomid: live.roomid.toString(),
              cover: live.cover,
            ));
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Image.network(
                    live.userCover + '@320w_200h',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 5,
                  right: 5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '${live.uname}',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Icon(
                        BIcon.live_people,
                        size: 18,
                        color: Colors.white,
                      ),
                      Text(
                        '${live.online}',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text(
              live.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Container(
              child: Text(
                live.areaName,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
