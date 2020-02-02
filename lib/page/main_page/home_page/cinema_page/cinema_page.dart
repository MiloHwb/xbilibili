import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/entity/cinema_model.dart';
import 'package:xbilibili/providers/cinema_page_provider.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/21 15:40
 * @ 描述         
 */
class CinemaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Theme.of(context).primaryColor,
      onRefresh: () {
        return Future.delayed(Duration(seconds: 1), () {
          Provider.of<CinemaPageProvider>(context, listen: false).getList();
        });
      },
      child: Consumer<CinemaPageProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.list.length,
            itemBuilder: (context, index) {
              Widget child;
              if (value.list[index] is CinemaBanners) {
                child = _buildBanners(value.list[index]);
              } else if (value.list[index] is CinemaRegions) {
                child = _buildRegion(value.list[index]);
              } else if (value.list[index] is CinemaTile) {
                child = _buildTile(value.list[index], context);
              }
              return child;
            },
          );
        },
      ),
    );
  }

  Widget _buildTile(CinemaTile bangumiTile, context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
            childAspectRatio: 0.6,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            children: bangumiTile.list.map((tile) {
              return _buildTileItem(tile, context);
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

  Container _buildTileItem(CinemaItem tile, context) {
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
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Image.network(
                            tile.cover,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            color: Colors.black26,
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                tile.badge != null
                    ? Positioned(
                        right: 5,
                        top: 5,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(3))),
                          child: Text(
                            tile.badge,
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          Text(tile.title,maxLines: 1,overflow: TextOverflow.ellipsis,),
          Text(
            tile.desc,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildRegion(CinemaRegions regions) {
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

  Widget _buildBanners(CinemaBanners banners) {
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
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
