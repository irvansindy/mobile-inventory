// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class FilterChipExample extends StatefulWidget {
  const FilterChipExample({super.key});

  @override
  _FilterChipExampleState createState() => _FilterChipExampleState();
}

class _FilterChipExampleState extends State<FilterChipExample> {
  final listFilter = <ItemFilter>[
    ItemFilter(1, 'Kurir Instan', false),
    ItemFilter(2, 'Bekas', false),
    ItemFilter(3, 'Bebas Ongkir', false),
    ItemFilter(4, 'Official Store', false),
    ItemFilter(5, 'Power Merchant', false),
  ];
  final listProduct = <ItemProduct>[
    ItemProduct(
      'PS4 Pro 1TB Last of Us +Gow Bundle',
      'https://ecs7.tokopedia.net/img/cache/700/product-1/2020/7/31/42584329/42584329_4a3977ec-adf1-4418-b706-fd3f572d99f0_700_700',
      'Rp7.199.000',
      <ItemProductFilter>[
        ItemProductFilter(1, true),
        ItemProductFilter(2, false),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, true),
      ],
    ),
    ItemProduct(
      'Ps4 pro bundle the last of us remastered & god of war',
      'https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/9/18/6dddbe40-382a-4716-a99d-13c61e444b63.jpg.webp',
      'Rp6.100.000',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, true),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
      ],
    ),
    ItemProduct(
      'Ps4 pro bundle Resident Evil 2',
      'https://ecs7.tokopedia.net/img/cache/700/product-1/2019/12/22/552845233/552845233_ee70e0e4-0557-43b0-8a12-fbc7f31b6649_720_720.jpg',
      'Rp7.099.000',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, true),
        ItemProductFilter(4, true),
        ItemProductFilter(5, false),
      ],
    ),
    ItemProduct(
      'PS4 Pro 500GB',
      'https://images.pexels.com/photos/275033/pexels-photo-275033.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'Rp5.199.000',
      <ItemProductFilter>[
        ItemProductFilter(1, true),
        ItemProductFilter(2, false),
        ItemProductFilter(3, true),
        ItemProductFilter(4, false),
        ItemProductFilter(5, false),
      ],
    ),
    ItemProduct(
      'Ps4 Slim Bekas',
      'https://images.pexels.com/photos/442576/pexels-photo-442576.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'Rp5.499.000',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, true),
        ItemProductFilter(3, false),
        ItemProductFilter(4, false),
        ItemProductFilter(5, true),
      ],
    ),
  ];
  final listProductFilter = <ItemProduct>[];

  @override
  Widget build(BuildContext context) {
    var isFilterActive =
        listFilter.where((element) => element.isFilterActive).isNotEmpty;
    listProductFilter.clear();
    if (!isFilterActive) {
      listProductFilter.addAll(listProduct);
    } else {
      // ignore: avoid_function_literals_in_foreach_calls
      listProduct.forEach((element) {
        var isPassed = false;
        var itemProductFilter = element.listProductFilter;
        for (var index = 0; index < itemProductFilter.length; index++) {
          var productFilter = itemProductFilter[index];
          var itemFilter = listFilter[index];
          if (productFilter.isFilterActive && itemFilter.isFilterActive) {
            isPassed = true;
            break;
          }
        }
        if (isPassed) {
          listProductFilter.add(element);
        }
      });
    }
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Filter Chip'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          SizedBox(
            height: 32,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listFilter.length,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemBuilder: (context, index) {
                var item = listFilter[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: FilterChip(
                    label: Text(item.name),
                    selected: item.isFilterActive,
                    onSelected: (_) => setState(
                        () => item.isFilterActive = !item.isFilterActive),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(
                left: 16,
                top: 8,
                right: 16,
                bottom: 16,
              ),
              itemBuilder: (context, index) {
                var itemProduct = listProductFilter[index];
                return Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        itemProduct.photo,
                        width: 64,
                        height: 64,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                itemProduct.name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                itemProduct.price,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: listProductFilter.length,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemFilter {
  final int id;
  final String name;
  bool isFilterActive;

  ItemFilter(this.id, this.name, this.isFilterActive);
}

class ItemProduct {
  final String name;
  final String photo;
  final String price;
  final List<ItemProductFilter> listProductFilter;

  ItemProduct(
    this.name,
    this.photo,
    this.price,
    this.listProductFilter,
  );

  @override
  String toString() {
    return 'ItemProduct{name: $name}';
  }
}

class ItemProductFilter {
  final int id;
  final bool isFilterActive;

  ItemProductFilter(this.id, this.isFilterActive);
}
