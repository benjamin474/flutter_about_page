import 'package:flutter/material.dart';
import 'package:flutter_about_page/main.dart';

class PopularAlbums extends StatelessWidget{
  const PopularAlbums({super.key});

  @override
  Widget build(BuildContext context) {
    final albums = <Album>[
      const Album(title: '小資女孩向前衝', cover: 'assets/aliceko.png'),
      const Album(title: '必娶女人', cover: 'assets/aliceko.png'),
    ];
    return Column(
      children: [
        const Text('熱門作品', style: TextStyle(fontSize: 20)),
        for(var album in albums)
          ListTile(
            leading: Image.asset(album.cover, width: 50),
            title: Text(album.title),
          ),
        
      ],
    );
  }
}