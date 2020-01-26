import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/entity/bangumi_model.dart';
import 'package:xbilibili/providers/bangumi_page_provider.dart';

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
        margin: EdgeInsets.all(10),
        child: Consumer<BangumiProvider>(builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.list.length,
            itemBuilder: (context, index) {
              Widget child;
              if (value.list[index] is BangumiBanners) {
                child = _buildBanners(value.list[index]);
              }
              return child;
            },
          );
        }),
      ),
    );
  }

  Widget _buildBanners(BangumiBanners banners) {
    return Container(
      height: 190,
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
