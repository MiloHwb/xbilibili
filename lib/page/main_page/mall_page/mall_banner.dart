import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/20 14:41
 * @ 描述         
 */
class MallBanner extends StatelessWidget {
  final List<String> bannerList;

  MallBanner(this.bannerList);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Swiper(
        autoplay: true,
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            color: Colors.black54,
            activeColor: Theme.of(context).primaryColor,
          ),
        ),
        itemCount: bannerList.length,
        itemBuilder: (context, index) {
          return Image.network(
            bannerList[index],
            fit: BoxFit.fitWidth,
          );
        },
      ),
    );
  }
}
