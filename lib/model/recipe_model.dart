class RecipeModel {
  int? id; 
  String title;
  int cookingTime;
  int servings;
  String imgPath;
  bool favourite;
  List<bool> takedingredients;
  List<String> ingredients;
  List<String> preparation;
  List<String> cooking;

  RecipeModel({
    this.id,
    this.favourite = false,
    required this.title,
    required this.cookingTime,
    required this.servings,
    required this.imgPath,
    required this.ingredients,
    required this.preparation,
    required this.cooking,
  }): takedingredients = List<bool>.filled(ingredients.length, false);

  static List<RecipeModel> iniRecipes = [
    RecipeModel(
      title: 'MIẾN LÒNG GÀ',
      favourite: false,
      cookingTime: 30,
      servings: 4,
      imgPath:
          'http://www.savourydays.com/wp-content/uploads/2019/02/c%C3%A1ch-n%E1%BA%A5u-mi%E1%BA%BFn-l%C3%B2ng-g%C3%A0-banner.jpg',
      ingredients: [
        '300 gr lòng mề gà',
        '500 gr xương gà',
        '200 gr miến khô',
        '10 gr mộc nhĩ',
        '10 gr nấm hương',
        '10 gr hành khô',
        '10 gr hành lá',
        '10 gr rau mùi',
        '30 gr gia vị',
        '30 ml nước mắm',
        '10 gr hạt tiêu',
        '15 ml dầu ăn',
      ],
      preparation: [
        'Chuẩn bị nước dùng: ',
        '-Xương gà rửa sạch, luộc sơ với 1 chút muối cho ra hết bọt bẩn. Rửa lại thật sạch, cho xương gà vào nồi với 1 lít nước. Đun sôi rồi hớt bọt nếu còn. Vặn lửa nhỏ, thêm 2 - 3 củ hành khô bóc vỏ, đập dập, ninh trong khoảng 50 - 60 phút tới khi ngọt nước (đừng ninh quá lâu vì có thể bị đục nước)',
        '-Sau khi ninh xong, vớt bỏ xương, nêm nếm nước dùng với gia vị và nước mắm cho vừa miệng. Nếu có sẵn nước luộc gà thì bạn tận dụng luôn nước luộc để làm nước dùng nhé.',
        'Chuẩn bị các nguyên liệu khác: ',
        '-Cho muối hạt vào phần lòng, tràng, mề gà, bóp kỹ, rửa lại cho thật sạch. Thái gan, lòng, tràng vừa ăn, mề gà thái nhỏ, trứng non để nguyên quả. Ướp hỗn hợp với 1/2 thìa cafe gia vị, 1/2 thìa cafe nước mắm, 1 thìa cafe hạt tiêu. Để 15p cho ngấm',
        '-Mộc nhĩ, nấm hương ngâm nở, rửa sạch, thái chỉ',
        '-Hành khô bóc bỏ, thái mỏng',
        '-Hành lá, rau mùi nhặt rễ, rửa sạch, thái nhỏ',
        '-Miến ngâm nước máy/ nước thường tới nở, vớt ra để ráo.'
      ],
      cooking: [
        'Bắc chảo lên bếp, đun nóng 1 thìa canh/ 15ml dầu ăn, cho hành khô vào phi thơm, rồi cho mộc nhĩ nấm hương vào xào khoảng 5p cho chín. Trút lòng mề gan trứng vào chảo, đảo nhẹ tay, xào trên lửa lớn 5-8p đến khi chín hẳn, nêm nếm lại cho vừa miệng.',
        'Trần miến trong nồi nước sôi khoảng 3p đến khi bấm móng tay vào sợi miến đứt ra (không trụng quá lâu, miến nhanh mềm nát). Vớt miến vào bát tô, múc nhân xào lên trên, cho hành mùi thái nhỏ vào. Chan đầy nước dùng đang sôi, rắc thêm hạt tiêu. Ăn nóng kèm ớt và chanh tùy khẩu vị.'
      ],
    ),
    RecipeModel(
      title: 'Phở Cuốn',
      favourite: false,
      cookingTime: 30,
      servings: 4,
      imgPath:
          'http://www.savourydays.com/wp-content/uploads/2019/02/phocuon_final-768x512.jpg',
      ingredients: [
        '500 gr bánh phở cuốn',
        '300 gr thịt thăn bò',
        '100 gr giá đỗ',
        '40 gr rau xà lách',
        '40 gr rau thơm các loại',
        '10 gr tỏi',
        '10 gr hành khô',
        '30 gr đường',
        '10 gr dầu hào',
        '5 gr bột canh',
        '5 gr hạt tiêu',
        '20 ml nước mắm',
        '15 ml nước cốt chanh',
        '2 quả ớt tươi',
        '30 ml dầu ăn',
      ],
      preparation: [
        'Sơ chế nguyên liệu',
        '-Thịt bò rửa sạch, thấm khô, thái thật mỏng.  Cho vào âu thịt 1 thìa cafe đường, đảo đều, để 10p cho thấm (Ướp đường trước sẽ giúp thịt được mềm và đậm đà hơn). Sau đó ướp thịt với 1 thìa cafe bột nêm/ bột gia vị, 1 thìa cafe dầu hào, 1/2 thìa cafe hạt tiêu. Để 15p cho thấm.',
        '-Giá đỗ rửa sạch',
        '-Hành, tỏi bóc bỏ, đập dập, băm nhỏ',
        '-Xà lách, rau thơm các loại nhặt rửa thật sạch, vẩy khô',
      ],
      cooking: [
        'Xào nhân',
        '-Dùng chảo chống dính sâu lòng. Đun nóng 2 thìa canh (30 ml) dầu ăn. Cho hành, tỏi băm vào phi thật thơm. Sau đó cho thịt bò vào xào nhanh tay đến khi thịt chín tái, cho tiếp giá đỗ vào chảo, đảo đều cùng thịt bò thêm 30p cho thịt bò chín hẳn, giá đỗ chín vừa tới. Trút ra bát, để riêng.',
        'Cuốn phở',
        '-Trải 1 lá bánh phở lên thớt/ mặt phẳng sạch, xếp rau xà lách và rau thơm. Xúc 1 thìa bò xào giá xếp lên trên rau sống.',
        '-Nhẹ nhàng cuốn đều bánh phở sao cho toàn bộ nhân và rau ở trong lá phở cuốn',
        '-Ăn ngay sau khi cuốn, chấm với nước chấm chua ngọt.',
        'Pha nước chấm.',
        '-Trong 1 bát nhỡ, trộn đều tất cả các nguyên liệu làm nước chấm chua ngọt, gồm: 20 g đường, 20 ml nước mắm, 20 ml nước lọc, 15 ml nước chanh, nêm nếm lại cho vừa khẩu vị. Thêm ớt tươi cắt lát mỏng.'
      ],
    ),
    RecipeModel(
      title: 'Gỏi Lưỡi Lợn ',
      favourite: false,
      cookingTime: 40,
      servings: 4,
      imgPath:
          'http://www.savourydays.com/wp-content/uploads/2019/01/c%C3%A1ch-l%C3%A0m-g%E1%BB%8Fi-l%C6%B0%E1%BB%A1i-banner-768x440.jpg',
      ingredients: [
        '400 gr lưỡi heo',
        '100 gr hành tây',
        '40 gr hành khô',
        '15 gr đường',
        '15 gr dấm táo',
        '10 gr gừng tươi',
        '20 gr rau kinh giới',
        '20 gr bạc hà',
        '15 gr rau mùi',
        '7 gr ớt (2 quả)',
        '30 gr vừng trắng',
        '60 ml nước mắm',
        '60 gr đường',
        '60 ml nước cốt chanh',
      ],
      preparation: [
        'Lưỡi heo rửa lại sạch. Đun sôi nước, trụng lưỡi vào nước sôi, để khoảng 3 - 5 phút tới khi phần ngoài của lưỡi se lại. Vớt ra rửa sơ dưới vòi nước máy cho nguội bớt, Dùng dao sắc cạo hoặc gọt bỏ phần vỏ trắng bên ngoài lưỡi.',
        'Hành tây, hành khô bóc vỏ, thái lát mỏng, ướp với 1 thìa canh đường và 1 thìa canh dấm (nên dùng dấm táo), để 15p cho hành bớt hăng. Vắt bỏ nước dấm đường, để hành sang 1 bên.',
        'Chuẩn bị các nguyên liệu khác: ',
        '-Rau kinh giới, bạc hà, mùi nhặt rễ, rửa sạch, để ráo nước, thái ngắn vừa ăn.',
        '-Gừng cạo vỏ, thái sợi mỏng',
        '-Ớt băm nhuyễn',
        '-Vừng trắng rang vàng thơm',
      ],
      cooking: [
        'Cho lưỡi heo vào nồi. Cho thêm 2 thìa canh (30 ml) dấm, 2 thìa cafe (10 gram) gia vị/ bột nêm, 2 củ hành khô đập dập. Luộc lưỡi chín tới (khoảng 20p) - lưu ý không luộc quá nhiều, lưỡi sẽ mất độ giòn. Vớt ra ngâm vào âu nước lạnh để lưỡi được giòn. Đến khi lưỡi nguội thì thái lát mỏng.',
        'Pha nước mắm trộn bao gồm: 60 ml nước mắm, 60 gr đường và 60 ml nước cốt chanh. Khuấy thật kỹ đến khi tan hết đường. Cho ớt băm nhuyễn vào, khuấy đều.',
        'Cho các nguyên liệu: Lưỡi heo thái lát, hành tây, hành tím ngâm dấm đường, rau thơm, gừng thái sợi vào âu trộn. Chan nước sốt lên, dùng tay đảo nhẹ nhàng cho các nguyên liệu thấm đều nước sốt.',
        'Cho gỏi ra đĩa, rắc vừng rang lên trên. Có thể ăn kèm với bánh phồng tôm hoặc bánh đa nướng đều rất hợp.',
      ],
    ),
    RecipeModel(
      title: 'NỘM ĐU ĐỦ BÒ KHÔ',
      favourite: false,
      cookingTime: 30,
      servings: 3,
      imgPath:
          'http://www.savourydays.com/wp-content/uploads/2019/01/nombokhofinal.jpg',
      ingredients: [
        '200 gr đu đủ xanh',
        '150 gr cà rốt',
        '100 gr thịt bò khô',
        '50 gr lạc/ đậu phộng',
        '20 gr rau kinh giới',
        '10 gr tỏi',
        '50 gr đường',
        '50 ml nước mắm',
        '50 ml nước cốt chanh',
        '1 quả ớt',
        '15 gr muối',
      ],
      preparation: [
        'Sơ chế nguyên liệu:',
        '-Đu đủ xanh, cà rốt gọt vỏ, nạo/ thái sợi thật mỏng, dài.',
        '-Thịt bò khô xé sợi mỏng',
        '-Lạc rang chín, để nguội, se bỏ vỏ, giã dập',
        '-Rau kinh giới nhặt lấy lá, rửa sạch',
        '-Tỏi bóc vỏ, băm nhỏ lẫn cùng với ớt',
      ],
      cooking: [
        'Cho 1 thìa cafe muối vào bóp nhẹ cùng đu đủ khoảng 2 - 3 phút rồi rửa sạch, vắt nhẹ cho bớt nước. Trộn cà rốt và đu đủ với 1 - 1.5 thìa canh đường (15 - 20 gram), để 15 - 20 phút rồi vắt nhẹ, bỏ nước đi. Cách làm này sẽ giúp cho đủ đủ và cà rốt rất giòn.',
        'Làm nước trộn: Trong 1 bát con, cho vào 50 ml nước mắm, 30 gr đường, 50 ml nước cốt chanh, khuấy thật kĩ đến khi tan hết đường. Cho ớt, tỏi băm nhuyễn vào, đảo đều. Nếm lại cho vừa khẩu vị. Lưu ý vì một phần đường đã có trong đu đủ và cà rốt nên nước trộn không cần ngọt nhiều.',
        'Gắp ra đĩa, rắc lạc rang giã dập lên trên và thưởng thức thôi.',
      ],
    ),
    RecipeModel(
      title: 'Chả Ngũ Sắc',
      favourite: false,
      cookingTime: 90,
      servings: 5,
      imgPath:
          'http://www.savourydays.com/wp-content/uploads/2019/01/c%C3%A1ch-l%C3%A0m-ch%E1%BA%A3-gi%C3%B2-ng%C5%A9-s%E1%BA%AFc-banner.jpg',
      ingredients: [
        '500 gram giò sống',
        '3 quả trứng gà',
        '10 lòng đỏ trứng muối',
        '50 gr lạp xưởng',
        '20 gr nấm hương',
        '20 gr mộc nhĩ',
        '150 gr cà rốt',
        '50 gr đậu que',
        '6 gr đường',
        '6 gr mắm',
        '6 gr hạt tiêu',
      ],
      preparation: [
        'Sơ chế nguyên liệu: ',
        '-Mộc nhĩ, nấm hương ngâm nở, rửa sạch, thái chỉ.',
        '-Cà rốt gọt vỏ, nạo sợi.',
        '-Đậu que tước vỏ sơ, rửa sạch, để nguyên quả',
        '-Lạp xưởng cắt làm 4, giữ nguyên độ dài',
        '-Trứng muối lấy lòng đỏ, rửa qua với rượu để khử tanh, thấm khô, hấp chín hoặc nướng 5p trong lò nhiệt độ 170 độ C.',
        '-Lá dong rửa sạch, lau khô, tước bỏ phần cứng giữa lá.',
      ],
      cooking: [
        'Cho các nguyên liệu: giò sống, mộc nhĩ, nấm hương thái chỉ, cà rốt nạo sợi vào, tô to. Ướp vào tô 1 thìa cafe đường, 1 thìa cafe nước mắm, 1 thìa cafe hạt tiêu, trộn thật đều.',
        'Đánh tan 3 quả trứng với 1 thìa canh nước lọc, nêm vào ½ thìa cafe gia vị. Chia trứng làm 2 phần tráng mỏng.',
        'Trải 1 miếng trứng xuống mặt thớt to, dàn đều ½ hỗn hợp giò sống khắp mặt trứng, lần lượt xếp đậu que, rồi đến lạp xưởng, sau đó xếp 5 lòng đỏ trứng muối thẳng hàng. Tiếp tục xếp lạp xưởng và đậu que lần lượt, để cho sau khi cuộn thì trứng muối sẽ ở chính giữa lạp xưởng và đậu que.',
        'Cẩn thận cuộn trứng tròn lại, sao cho toàn bộ nhân nằm gọn bên trong.',
        'Đặt 2 lá dong cạnh sát nhau theo chiều dọc, rồi đặt tiếp 2 lá lên trên nằm ngang. Đặt cuộn trứng vào đầu tấm trải lá dong, cẩn thận cuộn tròn thật kín. Dùng lạt buộc để lá dong không bị bung trong khi hấp.',
        'Làm tương tự đến bước 5 với cây giò thứ 2. Nếu không có lá dong, bạn có thể cuốn chặt giò bằng màng bọc thực phẩm, xoắn chặt 2 đầu lại. Sau đó cuốn thêm 1 lớp giấy bạc ra bên ngoài, xoắn chặt 2 đầu giấy bạc là được.',
        'Hấp cách thủy trong vòng 45p, để nguội, bóc vỏ rồi thái khoanh tròn.',
        'Yêu cầu thành phẩm: Giò và các loại nhân chín đều, dai dai giòn giòn. Có thể ăn như các món nguội, chấm thêm nước mắm tiêu nếu muốn đậm đà hơn.',
      ],
    ),
    RecipeModel(
        title: 'Cơm gạo lứt, tôm, bông cải xanh, cà rốt, nấm',
        favourite: false,
        cookingTime: 30,
        servings: 1,
        imgPath:
            'https://file.hstatic.net/1000301274/file/1_6bb43d22bf9f4840a74766e3bb4cb6ad_grande.jpg',
        ingredients: [
          '100gr gạo lứt',
          '1 nõn bông cải xanh',
          '5 con tôm bóc nõn',
          '10g nấm thủy tiên',
          '1/2 củ cà rốt',
        ],
        preparation: [
          'Gạo lứt đem vo sơ',
          'Bông cải, cà rốt cắt miếng vừa ăn',
          'Ướp tôm với 1 chút muối',
          'Làm sạch nấm',
        ],
        cooking: [
          'Nấu chín gạo . (Nên cho lượng nước nấu cơm gạo lứt nhiều hơn gạo thường 1 chút)',
          'Luộc bông cải và cà rốt',
          'Cho tôm và nấm chiên cho đến khi vàng tôm',
          'Cho cơm gạo lứt, tôm, cà rốt, bông cải, nấm sắp xếp lên đĩa thật ngon mắt và thưởng thức',
        ]),
    RecipeModel(
        title: 'Cơm gạo lứt, ức gà, trứng gà, rau xà lách, cà rốt',
        favourite: false,
        cookingTime: 30,
        servings: 1,
        imgPath:
            'https://file.hstatic.net/1000301274/file/2_a3f399586ba34ab396a0d33f3e4f1ea0_grande.jpg',
        ingredients: [
          '100gr gạo lứt',
          '200gr ức gà',
          '1 quả trứng gà',
          '1 bắp xà lách vừa',
          '1/2 củ cà rốt',
        ],
        preparation: [
          'Gạo lứt đem vo sơ',
          'Rửa sạch trứng',
          'Ướp thịt gà với 1 chút muối, tieu và gia vị',
          'Làm sạch xà lách ',
          'làm sạch và thái cà rốt vừa ăn',
        ],
        cooking: [
          'Nấu chín gạo . (Nên cho lượng nước nấu cơm gạo lứt nhiều hơn gạo thường 1 chút)',
          'Luộc trứng và cà rốt',
          'Áp chảo 2 mặt thịt gà chín vàng',
          'Cho cơm ra đĩa, xếp ức gà, rau xà lách, cà rốt, trứng gà lên trên đĩa cho đẹp mắt và thưởng thức',
        ]),
    RecipeModel(
        title: 'Trứng Lòng Đào',
        favourite: false,
        cookingTime: 20,
        servings: 2,
        imgPath:
            'https://cdn.shortpixel.ai/spai/q_lossless+ret_img+to_auto/www.thatlangon.com/wp-content/uploads/2021/04/tldtln-e1618902254982-medium.jpg',
        ingredients: [
          '4 quả trứng gà',
          '400ml nước sạch',
          '1-2 thìa canh giấm trắng',
        ],
        preparation: [
          'Rửa sạch trứng',
        ],
        cooking: [
          'Luộc trứng trong vòng 3 phút với lửa vừa',
          'Trứng sau khi luộc ngâm với nước lạnh',
          'Bóc vỏ và thưởng thức',
        ]),
    RecipeModel(
        title: 'Canh Khổ Qua Nhồi Thịt',
        favourite: false,
        cookingTime: 10,
        servings: 4,
        imgPath:
            'https://cdn.tgdd.vn/2021/04/CookRecipe/Avatar/canh-kho-qua-nhoi-thit-cong-thuc-duoc-chia-se-tu-nguoi-dung-thumbnail-1.jpg',
        ingredients: [
          '300gr thịt lợn',
          '3 quả khổ qua',
          '1-2 thìa canh dầu ăn',
          '50gr nấm mèo',
          '1-2 thìa đường,tiêu bột,hạt nêm,bột ngọt',
          '1 ít hành ngò ',
          '500ml nước sạch',
        ],
        preparation: [
          'Thịt heo sau khi mua về bạn rửa sạch, để ráo nước sau đó mang đi băm nhuyễn ướt gia vị.',
          'Khổ qua bạn bỏ ruột, rửa sạch và để ráo và thái khúc từ 4-5cm',
          'Rửa nấm mèo dưới vòi nước cho sạch và ngâm nấm với nước trong khoảng 5 phút cho nấm mềm thì vớt ra, mang đi băm nhuyễn.',
          'Hành ngò bạn cắt bỏ rễ, rửa sạch, sau đó cắt nhỏ.',
          'Trộn đều thịt đã ướt gia vị với nấm rồi nhồi vào khổ qua. ',
        ],
        cooking: [
          'Cho vào nồi khoảng 500ml nước, đun sôi sau đó cho khổ qua nhồi thịt vào, đậy nắp nấu trong khoảng 30 phút với lửa vừa.',
          'Khi khổ qua đã chín mềm thì bạn nêm nếm lại gia vị cho vừa ăn rồi cho thêm ít hành ngò để trang trí.',
        ]),
    RecipeModel(
        title: 'Trứng Chiên Hành',
        favourite: false,
        cookingTime: 60,
        servings: 4,
        imgPath:
            'https://yummyday.vn/uploads/images/trung-chien-hanh-tay-4.jpg',
        ingredients: [
          '1-3 quả trứng',
          '1-2 thìa canh dầu ăn',
          '1-2 thìa nước mắm,tiêu bột,hạt nêm',
          '50gr hành  ',
        ],
        preparation: [
          'Hành lá cắt bỏ phần rễ, rửa sạch, thái nhỏ rồi cho vào tô.',
          'Đập trứng gà vào tô hành, thêm 1 muỗng cà phê hạt nêm, 1/2 muỗng canh nước mắm sau đó đánh tan và khuấy đều hỗn hợp.',
        ],
        cooking: [
          'Bạn bắc chảo lên bếp, cho dầu ăn vào, đợi dầu sôi thì cho trứng vào chiên, đợi đến khi mặt phía dưới chín thì lặt mặt, đợi đến khi trứng chín thì tắt bếp, cho ra dĩa.',
        ]),
    RecipeModel(
        title: 'Khổ Qua Xào Trứng',
        favourite: false,
        cookingTime: 60,
        servings: 4,
        imgPath:
            'https://cdn.tgdd.vn/2020/07/CookRecipe/Avatar/kho-qua-xao-trung-thumbnail.jpg',
        ingredients: [
          '1-3 quả trứng',
          '1-2 thìa canh dầu ăn',
          '1-2 thìa nước mắm,tiêu bột,hạt nêm',
          '1 quả khổ qua',
        ],
        preparation: [
          'Khổ qua rửa sạch, bổ đôi rồi dùng muỗng để múc hết phần ruột ra rồi cắt thành lát mỏng vừa ăn rồi cho vào thau nước đá lạnh, cách này sẽ giúp khử đi vị đắng của khổ qua',
          'Đập trứng  vào tô , thêm 1 muỗng cà phê hạt nêm, 1/2 muỗng canh nước mắm sau đó đánh tan và khuấy đều hỗn hợp.',
        ],
        cooking: [
          'Bạn bắc chảo lên bếp, cho dầu ăn vào, đợi dầu sôi thì cho khổ qua vào xào 3-4 phút.',
          'Cho hỗn hợp trứng vào và đảo đều cho đến khi trứng đông lại rồi cho ra đĩa',
        ]),
    RecipeModel(
        title: 'Thịt Kho Tàu',
        favourite: false,
        cookingTime: 200,
        servings: 4,
        imgPath:
            'https://tiki.vn/blog/wp-content/uploads/2023/02/thit-kho-tau-2-.jpg',
        ingredients: [
          '4-5 quả trứng vịt',
          '1-2 thìa canh dầu ăn',
          '1-2 thìa nước mắm,tiêu bột,hạt nêm,bột ngọt,đường,muối',
          '500gr thịt lợn ba rọi',
          '500ml nước sạch',
          '1 lít nước dừa xiêm',
          'Hành tím, hành lá, tỏi, ớt',
        ],
        preparation: [
          'Hành tím, tỏi bóc vỏ, rửa sạch, băm nhỏ.',
          'Hành lá nhặt kỹ, rửa sạch, thái nhuyễn.',
          'Ớt rửa sạch, bỏ hạt, thái nhỏ.',
          'Ướp thịt với 1 muỗng hạt nêm, 2 muỗng nước mắm, 1/2 muỗng đường, 2 muỗng dầu ăn, 1 muỗng tiêu, hành tím, tỏi băm trong khoảng 2 tiếng để thịt ngấm đều gia vị.',
        ],
        cooking: [
          'Làm nóng chảo, cho 3 muỗng đường vào, đun đến khi đường chuyển màu nâu đậm thì thêm lượng nước vừa đủ rồi đun cho nước đường sôi. Khi nước đường đã sánh, sệt lại thì tắt bếp.',
          'Bắc nồi lên bếp, cho một ít dầu ăn vào rồi phi thơm tỏi, hành tím băm. Cho thịt vào đảo đều đến khi thịt săn lại, bề mặt thịt chuyển sang vàng sậm và dậy mùi thơm thì cho nước màu đã thắng vào. Đổ 1 lít nước dừa và 500ml nước lọc sao cho ngập thịt, đun cho nồi thịt sôi lại rồi điều chỉnh lửa ở mức độ vừa để thịt chín từ từ. Kho thịt trong khoảng 2 – 3 tiếng.',
          'Kho đến khi thịt hơi mềm thì bạn cho trứng vào kho chung. Trứng không nên bỏ vào sớm vì kho lâu sẽ bị chai cứng, đổi màu nâu không ngon. Nêm lại gia vị với 1 muỗng đường, 3 muỗng nước mắm, 1/2 muỗng muối rồi tắt bếp, rắc hành lá, ớt băm và một ít tiêu để món ăn dậy mùi hấp dẫn.',
          'Chú ý thường xuyên vớt bọt để nước kho có vị thanh. Khi kho thịt bạn cũng không nên đậy nắp nồi để nước thịt trong và đẹp hơn.',
        ]),
  ];  // Map<String, Object?> toMap() {}
}
