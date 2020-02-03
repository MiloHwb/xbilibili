import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/entity/anniversary70_model.dart';
import 'package:xbilibili/icons/bilibili_icons.dart';
import 'package:xbilibili/providers/anniversary70_page_provider.dart';

import 'anniversary_item.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/21 15:41
 * @ 描述         
 */
class Anniversary70Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Theme.of(context).primaryColor,
      onRefresh: () {
        return Future.delayed(Duration(seconds: 1), () {
          Provider.of<Anniversary70PageProvider>(context, listen: false).getList();
        });
      },
      child: Consumer<Anniversary70PageProvider>(
        builder: (context, value, child) {
          return Container(
            child: ListView.builder(
              itemCount: value.list.length,
              itemBuilder: (context, i) {
                Widget widget = Container();
                if (value.list[i] is Anniversary70Banners) {
                  widget = buildTopBanners(value.list[i], context);
                } else if (value.list[i] is Anniversary70VideoTile) {
                  widget = buildAnniversary70Tile(value.list[i]);
                } else if (value.list[i] is Anniversary70BigCover) {
                  widget = buildBigCover(value.list[i]);
                }
                return widget;
              },
            ),
          );
        },
      ),
    );
  }

  Widget buildBigCover(Anniversary70BigCover bigCover) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      height: 190,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.network(
                bigCover.cover + '@600w_600h',
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black45,
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                  ),
                ),
                child: Text(
                  bigCover.title,
                  style: TextStyle(color: Colors.white),
                  maxLines: 1,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 100, 5),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black54,
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      BIcon.play,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      ' ${bigCover.play}  ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      BIcon.danmaku,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      " ${bigCover.danmaku}",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: Icon(BIcon.play_action, size: 50, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAnniversary70Tile(Anniversary70VideoTile tile) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(tile.title),
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.9,
            children: tile.list.map((item) {
              return AnniversaryItem(item);
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget buildTopBanners(Anniversary70Banners banners, context) {
    return Container(
      height: 220,
      child: Stack(
        children: <Widget>[
          Image.network(
              'http://i0.hdslb.com/bfs/archive/2e92d79c8a2a5a87f0d91ab1d493d09f5c1b2ec6.jpg'),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: Container(
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Swiper(
                  autoplay: true,
                  pagination: SwiperPagination(
                    alignment: Alignment.bottomRight,
                    builder: DotSwiperPaginationBuilder(
                      activeColor: Theme.of(context).primaryColor,
                      activeSize: 7,
                      size: 7,
                      color: Colors.white,
                    ),
                  ),
                  itemCount: banners.regions.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Image.network(
                        banners.regions[index].cover + '@600w_600h',
                        fit: BoxFit.fitWidth,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
