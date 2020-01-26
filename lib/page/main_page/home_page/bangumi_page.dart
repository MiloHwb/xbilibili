import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/entity/bangumi_model.dart';
import 'package:xbilibili/providers/bangumi_page_provider.dart';
import 'package:xbilibili/route/routes.dart';

import '../../../r.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/21 15:40
 * @ 描述         
 */
class BangumiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Theme.of(context).primaryColor,
      onRefresh: () {
        Provider.of<BangumiProvider>(context, listen: false).getList();
        return Future.delayed(Duration(seconds: 1));
      },
      child: Container(
        child: Consumer<BangumiProvider>(builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.list.length,
            itemBuilder: (context, index) {
              Widget child;
              if (value.list[index] is BangumiBanners) {
                child = _buildBanners(value.list[index]);
              } else if (value.list[index] is BangumiRegions) {
                child = _buildRegion(value.list[index]);
              } else if (value.list[index] is String) {
                child = _buildLogin(context);
              } else if (value.list[index] is BangumiTile) {
                child = _buildTile(value.list[index], context);
              }
              return child;
            },
          );
        }),
      ),
    );
  }

  Widget _buildTile(BangumiTile bangumiTile, context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(bangumiTile.title),
                Text(
                  '查看更多',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisSpacing: 10,
            mainAxisSpacing: 5,
            childAspectRatio: 1.1,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: bangumiTile.list.map((tile) {
              return _buildTileItem(tile);
            }).toList(),
          ),
          SizedBox(height: 10),
          Text(
            '换一换',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }

  Container _buildTileItem(BangumiItem tile) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Image.network(
                      tile.cover,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(tile.title),
          Text(
            tile.desc,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildLogin(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(RouteName.loginPage);
      },
      child: Image.asset(R.imagesBangumiHomeLoginGuide),
    );
  }

  Widget _buildRegion(BangumiRegions regions) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[400], width: 0.5),
        ),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: regions.regions.map((region) {
          return Tab(
            icon: Image.network(
              region.icon,
              width: 35,
            ),
            text: region.title,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildBanners(BangumiBanners banners) {
    return Container(
      height: 190,
      margin: EdgeInsets.all(10),
      child: Swiper(
        itemCount: banners.regions.length,
        autoplay: true,
        pagination: SwiperPagination(alignment: Alignment.bottomRight),
        itemBuilder: (context, index) {
          return Container(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(banners.regions[index].cover),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120),
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  alignment: Alignment.bottomLeft,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.01),
                        Colors.black54,
                      ],
                    ),
                  ),
                  child: Text(
                    banners.regions[index].title,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
