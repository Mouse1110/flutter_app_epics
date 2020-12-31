import 'package:flutter/material.dart';
import 'package:spocs/Model/plant_info.dart';
import 'package:spocs/home/component/show_oxi.dart';
import 'headerbox.dart';
import 'list_plant_card.dart';
import 'list_view_moisture.dart';
import 'title_with_button_more.dart';

class Body extends StatelessWidget {
  List<PlantInfo> planInfo = [
    PlantInfo(
        image: 'assets/images/img_cayluoiho.jpg',
        name: 'Lưỡi Hổ',
        id: 'D3S2',
        price: 25,
        mois: 25,
        detail:
            ' là giống cây phong cảnh xếp ở thứ 15 trong Top 20 cây cảnh văn phòng tốt nhất. Với hình ảnh xanh mát và khỏe khoắn “Lưỡi Hổ” giúp mọi người giảm stress rất tốt. Hoặc là cải thiện những điều xui xẻo sẽ gặp trong công việc làm ăn.'),
    PlantInfo(
        image: 'assets/images/img_caykimtien.jpg',
        name: 'Kim Tiền',
        id: 'D3D1',
        price: 15,
        mois: 30,
        detail:
            'Cây Kim Phát Tài (cây kim tiền) là loài cây nhỏ nhưng thân khỏe. Lá cây trơn tru mang vẻ tươi mới. Nếu như cây càng sống lâu vậy thì chúng cho thấy được công ty có xu hướng phát triển. Cây này có khả năng lọc không khí rất tốt, đặc biệt có tính phong thủy cao, cây này thường được đặt ở các góc nhỏ trong văn phòng. đặt ở bàn làm việc hoặc hành lang đi lại.Đặt một chậu Kim tiền trên bàn làm việc trong phòng máy lạnh giúp không gian xung quanh được ẩm hơi nước và tươi mới hơn, đồng thời thanh lọc không khí, khói bụi, vi khuẩn xung quanh phòng làm việc mang lại không khí trong lành cho mọi người. Đúng như ý nghĩa của cái tên: Kim tiền, trong phong thủy, cây Kim tiền mang đến tài lộc, may mắn, tiền tài, phú quý, giàu sang, sung túc, thịnh vượng cho người sỡ hữu. Đặc biệt, khi cây Kim tiền ra hoa chính là sự báo hiệu may mắn và thành công đang đến. Thuộc loại cây có lá kép dạng to, cuống lá ngắn, phiến lá xanh thẫm, sáng bóng và mọc đối xứng hai bên cọng lá. Các nhánh to khoẻ vươn lên cao, sống tốt cả trong môi trường thiếu ánh sáng và không khí. Cây Kim Tiền có tuổi thọ khá lâu và cũng khá dễ trồng. Vì vậy, nó được trồng nhiều trong các văn phòng làm việc.'),
    PlantInfo(
        image: 'assets/images/img_cayconhat.jpg',
        name: 'Bạch Mã Hoàng Tử',
        id: 'D3A4',
        price: 2,
        mois: 45,
        detail:
            'Cây bạch mã hoàng tử có tác dụng thanh lọc và điều hòa không khí, độ ẩm, thích hợp trong điều kiện môi trường thường xuyên sử dụng máy lạnh. Cây bạch mã hoàng rất tốt để đặt trên bàn làm việc, không những tốt cho sức khỏe mà còn tạo ra cảm giác tươi xanh mát mắt, giảm stress và căng thẳng trong cuộc sống, công việc. Ngoài ra cây còn có ý nghĩa giúp cho người sở hữu nó phát triển con đường sự nghiệp nhanh chóng, thuận buồm xuôi gió và may mắn trong cuộc sống.  '),
    PlantInfo(
      image: 'assets/images/img_bangsingapo.jpg',
      name: 'Bàng Singapo',
      id: 'D3F3',
      price: 1,
      mois: 70,
      detail:
          'Cây bàng singapore có khả năng hút các khí độc trong không khí, duy trì độ ẩm, cung cấp oxy, rất tốt cho đối tượng làm việc trong văn phòng, khi phải thường xuyên tiếp xúc nhiều với bức xạ nhiệt từ máy tính gây ra rất có hại cho sức khỏe. Cây Bàng Singapore là cây cảnh phong thủy được nhiều người yêu thích bởi mang đến cho người trồng nhiều năng lượng tích cực. Bản thân cây mọc thẳng là biểu tượng của sự ngay thẳng, chính trực, cũng tượng trưng cho đức tính chịu khó và ý chí vươn lên trong cuộc sống.',
    ),
    PlantInfo(
        image: 'assets/images/img_caykimngan.jpg',
        name: 'Kim Ngân',
        id: 'D2F1',
        price: 1,
        mois: 45,
        detail:
            'Loài cây này không chỉ được ưa chuộng về nét đẹp tượng trưng cho Kim, Mộc, Thủy, Hỏa, Thổ. Mà bản thân nó còn đảm bảo được ý nghĩa phong thủy tốt cho các mệnh.Do vẻ đẹp độc lạ và ý nghĩa phong thủy mà cây có thể dùng làm quà tặng, trang trí làm đẹp cho không gian. Ngoài ra, cây còn có tác dụng đuổi muỗi rất tốt, thanh lọc không khí, góp phần đáng kể tạo ra không gian xanh mát, thư giãn. Người ta tin rằng nếu bạn đặt một cây cây kim ngân ở nơi tiếp xúc với các khu vực liên quan đến tiền, thì cây này sẽ mang lại may mắn và sinh sôi cho chủ sở hữu.'),
    PlantInfo(
        image: 'assets/images/img_thietmoclan.jpg',
        name: 'Thiết Mộc Lan',
        id: 'A2R1',
        price: 1,
        mois: 80,
        detail:
            'Thiết Mộc Lan mang trong mình quan điểm phong thủy rất hoàn thiện. Ví dụ khi cây có 2 nhánh mang ý nghĩa về tình duyên, 3 nhánh mang lại sự hạnh phúc. Còn cây 5 nhánh mang đến sức khỏe, 8 nhánh thì về tài lộc và 9 nhánh thì về thời vận. Cây thiết mộc lan phù hợp với những không gian mát, thường xuyên sử dụng máy lạnh như: văn phòng hoặc phòng khách. Cây sẽ lọc không khí, giúp không gian nơi đó được trong lành hơn. Ngoài ra, cây còn có thể loại bỏ 1 số loại độc có trong không khí như: Cacbon monoxit (chất dễ bắt cháy, độc tính cao); benzene; toluene; formallhelyde;…Trong phong thủy, cây thiết mộc lan có ý nghĩa mang lại nhiều may mắn, tài lộc, tiền bạc cho chủ nhân. Đặc biệt, khi cây nở hoa là báo hiệu tiền tài sắp đến. '),
    PlantInfo(
        image: 'assets/images/img_cayphatloc.jpg',
        name: 'Phát Lộc',
        id: 'R2A3',
        price: 1,
        mois: 100,
        detail:
            'Có sức sống mạnh mẽ, rất dễ chăm sóc. Nó tự sinh tồn trong môi trường khắc nghiệt nhưng luôn giữ được dáng thẳng, hiên ngang, là một loại cây mang đến năng lượng dồi dào. Cây Phất Lộc còn tượng trưng cho sự may mắn, sức khoẻ và sự thịnh vượng. Đặt loại cây này trên bàn làm việc, người chủ sẽ nhận được nhiều sự may mắn cũng như có sức khoẻ dồi dào, sự nghiệp thăng tiến. Một điểm lưu ý nữa là khi mua cây Phát Lộc để đặt trong nhà hay văn phòng, bạn cũng nên chú ý đến việc mua số lượng cành/ cây như thế nào cho phù hợp. Theo đó, 2 cây tượng trưng cho tình yêu, 3 cây tượng trưng cho hạnh phúc – trường thọ – giàu có, 5 cây tượng trưng cho sức khoẻ – tinh thần – trí tuệ – tâm linh – trực giác, 8 cây tượng trưng cho sự phát triển và thịnh vượng, 9 cây tượng trưng cho may mắn…'),
    PlantInfo(
        image: 'assets/images/img_trucbachhop.jpg',
        name: 'Trúc Bách Hợp',
        id: 'Q2G3',
        price: 1,
        mois: 15,
        detail:
            'Theo NASA thì loại cây này có thể lọc bỏ nhiều khí độc, đem lại môi trường trong lành. Ngoài ra, cây còn được sử dụng để làm cây cảnh trang trí, cho không gian thêm sinh động, giải tỏa căng thẳng. Trong tự nhiên, cây còn là thảo dược chữa được nhiều loại bệnh. Cây Trúc bách hợp có rất nhiều ý nghĩa tốt đẹp. Từ lâu, ta đã biết 4 loài cây quý là Tùng – Cúc – Trúc – Mai, trong văn hóa phương Đông, Trúc có nghĩa là trời đất trường xuân, đại diện cho sự vĩnh cửu, trường tồn theo năm tháng. '),
    PlantInfo(
        image: 'assets/images/img_cayvanloc.jpg',
        name: 'Vạn Lộc',
        id: 'T4M1',
        price: 1,
        mois: 42,
        detail:
            'Cây Vạn Lộc hay còn gọi với tên khác là Cây Thiên Phú, thuộc họ thực vật Ráy. Cây có nguồn gốc từ Indonexia, Thái Lan. Vạn Lộc là cây dễ trồng, dễ chăm sóc. Cây mang ý nghĩa phong thủy tốt đem lại tài lộc, may mắn cho người sở hữu, gia chủ nên nó là cây cảnh rất được ưa thích hiện nay. Cây Vạn Lộc là cây dạng thân thảo mọc theo bụi, không phân cành và nhánh. Vạn Lộc có 2 loại là loại Vạn Lộc lá đỏ và Vạn Lộc lá xanh. Lá cây dày, bề mặt lá bóng có dạng hình trứng rộng. Đỉnh lá nhọn, mép lá nguyên lượn sóng. Lá mọc đan xen xếp từng tầng tròn quanh thân mang lại cảm giác cân đối và thu hút người nhìn. Vạn Lộc lá đỏ viền xanh, đốm hồng cà xanh khắp mặt lá tạo ấn tượng từ cái nhìn đầu tiên. Cây thường được trồng trong chậu nhỏ hoặc trong chậu chứa nước thủy sinh để trang trí bàn làm việc, của sổ, bàn ăn, phòng khách, cửa sổ… Ngoài có tác dụng làm đẹp cảnh quan xung quanh cây còn có ý nghĩa phong thủy tốt.'),
    PlantInfo(
        image: 'assets/images/img_cayngocngan.jpg',
        name: 'Ngọc Ngân',
        id: 'K1I6',
        price: 1,
        mois: 12,
        detail:
            'Thích hợp trưng bày trên bàn làm việc, mang lại không gian xanh mát cho căn phòng. Thường xuyên tưới nước vào mùa hè.Trong môi trường khô, đặc biệt dễ bị bay hơi nước, vì vậy bạn cần tưới nước hầu như hàng ngày. Nên tưới cả lá cây giúp tăng cường sự hấp thụ các chất độc hại có trong không khí, đẩy nhanh quá trình quang hợp.'),
    PlantInfo(
        image: 'assets/images/img_caytrauba.jpg',
        name: 'Trầu Bà',
        id: 'P2B1',
        price: 1,
        mois: 80,
        detail:
            'Cây Trầu Bà leo cột là loại cây thanh lọc không khí rất tốt. Cây có thể hấp thụ các khí độc: Aldehyde formic, monooxide de carbone, benzene, toluene, formallhelyde. Do đó, đây không chỉ là cây cảnh để trang trí mà còn rất tốt cho sức khỏe con người. Trầu bà leo cột có sức sống dẻo dai, mãnh liệt. Cũng vì thế người ta quan niệm cây thể hiện ý chí vươn lên không ngừng của người trồng. Cây Trầu Bà leo cột trong phong thủy cũng vì thế mà tượng trưng cho sự mạnh mẽ.'),
    PlantInfo(
        image: 'assets/images/img_daiphugia.jpg',
        name: 'Đại Phú Gia',
        id: 'U2N1',
        price: 1,
        mois: 50,
        detail:
            'Do có hình dáng đẹp thích hợp trang trí nội thất, làm cây cảnh ở văn phòng, tiền sảnh… Ngoài ra, cây còn có tác dụng cân bằng không gian, độ ẩm, tạo sự xanh mát, thanh lọc không khí bảo vệ sức khỏe con người. Cây đại phú gia có ý nghĩa về mặt phong thủy giống như tên gọi của nó là đem lại tiền tài, sức khỏe phú quý cho gia chủ. Đặc biệt khi ra hoa có ý nghĩa rất lớn đó là thời điểm giúp cho gia chủ giàu sang, phú quý và gặp được nhiều may mắn hơn.'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderBox(),
          TittleWithButtonMore(
            title: 'Nồng độ Oxi',
          ),
          ShowOxi(),
          TittleWithButtonMore(
            title: 'Cây được chăm sóc',
          ),
          ListPlant(
            plantInfo: planInfo,
          ),
          TittleWithButtonMore(
            title: 'Độ ẩm',
          ),
          ListViewMoisture(
            planInfo: planInfo,
          ),
          Container(
            height: 120,
          )
        ],
      ),
    );
  }
}
