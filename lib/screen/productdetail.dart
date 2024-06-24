import 'package:app_cosmetic/widgets/decription_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(Icons.shopping_bag),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Image.asset(
            'assets/instagram.png',
            width: 300,
            height: 300,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '256,000 VNĐ',
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                ),
                onPressed: null,
              )
            ],
          ),
          const Text(
            "Đây là sản phẩm nhé",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AbsorbPointer(
                absorbing: true,
                child: RatingBar.builder(
                  initialRating: 3.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              const Text(
                "Đã bán 50",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Icon(
                Icons.verified_user,
                color: Colors.green,
              ),
              const Text(
                "Hàng chính hãng 100% ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                child: Text(
                  "|",
                ),
                width: 10,
              ),
              Icon(
                Icons.local_shipping,
                color: Colors.green,
              ),
              Text(
                "Giao hàng miễn phí ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Mô tả sản phẩm ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
              child: new DecriptionText(
                  text:
                      'Bắt đầu từ độ tuổi 25 trở đi,làn da của chúng ta bước vào thời kì lão hóa tự nhiên của cơ thể, cộng thêm những tác nhân gây hại từ bên ngoài như ánh nắng mặt trời & ô nhiễm môi trường, từ đó hình thành nên các dấu hiệu lão hóa da bao gồm: nếp nhăn và rãnh nhăn, vết thâm nám, da kém săn chắc, da sạm, tối xỉn & không đều màu, lỗ chân lông phình to…Thấu hiểu được mong muốn của chị em phụ nữ trong việc duy trì làn da tươi trẻ và mịn màng, Olay đã cho ra đời dòng sản phẩm Total Effects 7 in One giúp ngăn ngừa 7 dấu hiệu lão hóa của làn da. Đây sẽ là giải pháp lý tưởng dành cho những làn da ở độ tuổi trưởng thành, giúp cung cấp Vitamin và khoáng chất nhằm nuôi dưỡng làn da trong suốt cả ngày dài, mang lại làn da tươi trẻ và rạng rỡ hơn bao giờ hết.')),
          Divider(),
          ExpansionTileCard(
            title: const Text('Thành phần sản phẩm'),
            children: <Widget>[
              const Divider(
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile. Use me any time you think your app could benefit from being just a bit more Material.These buttons control the next card down!""",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Text(
              "Đánh giá sản phẩm ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
