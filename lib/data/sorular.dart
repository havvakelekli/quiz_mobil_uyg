import '../models/soru.dart';

class SoruBankasi {
  // 1. YAZILIM ÖN KABUL SINAVI SORULARI
  static List<Soru> CISCOsorulari = [
    Soru(
      soruMetni:
          'Veri bağlantısı (Data-link) katmanındaki Veri Birimi (PDU) aşağıdakilerden hangisidir?',
      siklar: [
        'A) Bit',
        'B) Paket (Packet)',
        'C) Çerçeve (Frame)',
        'D) Segment',
      ],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),
    Soru(
      soruMetni:
          'Bir ağ teknisyeni "ping 127.0.0.1" komutunu çalıştırdığında neyi test etmektedir?',
      siklar: [
        'A)  Dış internet bağlantısını',
        'B) Varsayılan ağ geçidinin (Gateway) çalışıp çalışmadığını',
        'C) Bilgisayarın yerel TCP/IP yığınını ve ağ kartını',
        'D) DNS sunucusuna erişimi',
      ],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni:
          ' Bir bilgisayarın ağ kartına fabrikada kalıcı olarak atanan fiziksel adres donanımı aşağıdakilerden hangisidir?',
      siklar: [
        'A)  IP Adresi',
        'B) MAC Adresi',
        'C) Alt Ağ Maskesi',
        'D) Varsayılan Ağ Geçidi',
      ],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Yerel ağdaki cihazları (LAN) birbirine bağlayan ve MAC adreslerine göre veri iletimi yapan akıllı cihaz hangisidir?',
      siklar: [
        'A)  Router (Yönlendirici)',
        'B) Switch (Anahtar)',
        'C) Hub',
        'D) Modem',
      ],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Farklı ağlar (örneğin ev ağınız ile internet) arasında veri iletimini sağlayan ve IP adreslerine göre yönlendirme yapan cihaz hangisidir?',
      siklar: ['A)  Switch', 'B) Hub', 'C) Router', 'D) Access Point'],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni: 'Aşağıdakilerden hangisi geçerli bir IPv4 adresi biçimidir?',
      siklar: [
        'A)  192.168.1.300',
        'B)172.16.254.1',
        'C) 256.100.0.1',
        'D) 10.0.1.2.3',
      ],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni: 'IPv4 adresleri kaç bit uzunluğundadır?',
      siklar: ['A) 16 bit', 'B) 32 bit', 'C) 64 bit', 'D) 128 bit'],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Aşağıdaki ağ kablosu türlerinden hangisi veriyi ışık hızında ve elektromanyetik parazitlerden etkilenmeden iletir?',
      siklar: [
        'A)  UTP (Korumasız Çift Bükümlü)',
        'B) Koaksiyel Kablo',
        'C) Fiber Optik Kablo',
        'D) STP (Korumalı Çift Bükümlü)',
      ],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni:
          'İnternet sitelerine bağlanırken "www.google.com" gibi isimleri, bilgisayarların anladığı IP adreslerine çeviren protokol hangisidir?',
      siklar: ['A)  DHCP', 'B) DNS', 'C) FTP', 'D) HTTP'],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Ağdaki cihazlara otomatik olarak IP adresi, alt ağ maskesi ve ağ geçidi dağıtan protokol hangisidir?',
      siklar: ['A)  HTTP', 'B) DNS', 'C) SMTP', 'D) DHCP'],
      dogruCevapIndex: 3, // D şıkkı doğru
    ),

    Soru(
      soruMetni: 'OSI referans modeli toplam kaç katmandan oluşur?',
      siklar: ['A)4', 'B) 5', 'C) 7', 'D) 9'],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Web trafiği (HTTP/HTTPS) OSI modelinin hangi katmanında işlem görür?',
      siklar: [
        'A)  Fiziksel Katman',
        'B)  Ağ Katmanı',
        'C) Taşıma Katmanı',
        'D)Application Uygulama Katmanı',
      ],
      dogruCevapIndex: 3, // D şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Verinin güvenilir, sıralı ve hata kontrollü bir şekilde taşınmasını sağlayan bağlantı odaklı (connection-oriented) protokol hangisidir?',
      siklar: ['A)  UDP', 'B) IP', 'C) TCP', 'D) ICMP'],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Gecikmeye duyarlı olan canlı video akışları veya ses transferlerinde (VoIP) kullanılan, hızlı ama onay mekanizması olmayan taşıma protokolü hangisidir?',
      siklar: ['A)  TCP', 'B) UDP', 'C) HTTP', 'D) FTP'],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Bir bilgisayarın kendi IP adresini, alt ağ maskesini ve varsayılan ağ geçidini Windows komut satırından görmek için hangi komut yazılır?',
      siklar: ['A) ping', 'B) tracert', 'C) ipconfig', 'D) nslookup'],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni:
          ' Bir paketinin hedef sunuceruna giderken hangi routerlardan (yollardan) geçtiğini adım adım gösteren komut hangisidir?',
      siklar: ['A) ping', 'B) tracert', 'C) ipconfig', 'D) netstat'],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Aşağıdaki adreslerden hangisi özel (Private) bir IP adresidir ve internete doğrudan çıkamaz?',
      siklar: [
        'A) 8.8.8.8',
        'B) 192.168.1.5',
        'C)208.67.222.222',
        'D) 142.250.185.78',
      ],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Ağdaki bir cihazın tamamen internet kesintisi yaşaması durumunda teknisyenin ilk kontrol etmesi gereken katman hangisidir?',
      siklar: [
        'A) Uygulama Katmanı',
        'B) Fiziksel Katman',
        'C)Taşıma Katmanı',
        'D) Ağ Katmanı',
      ],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Ağ donanımlarına (Switch/Router) uzaktan şifreli ve güvenli bir şekilde CLI (Komut Satırı) bağlantısı yapmak için hangi protokol kullanılmalıdır?',
      siklar: ['A)  Telnet', 'B) SSH', 'C) FTP', 'D)HTTP'],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'İç ağdaki yerel IP adreslerini, internete çıkarken tek bir genel (Public) IP adresine dönüştürerek IPv4 adres tükenmesinin önüne geçen teknoloji nedir?',
      siklar: ['A)  DHCP', 'B) DNS', 'C) NAT', 'D) Subnetting'],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Onluk (Decimal) sistemdeki 172 sayısının 8 bitlik İkili (Binary) sistemdeki karşılığı aşağıdakilerden hangisidir?',
      siklar: ['A) 10101000', 'B)10101100', 'C) 11000000', 'D) 10001100'],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Aşağıdaki PDU (Veri Birimi) ve OSI katmanı eşleştirmelerinden hangisi YANLIŞTIR?',
      siklar: [
        'A)  Segment - Taşıma Katmanı (Transport)',
        'B) Paket (Packet) - Ağ Katmanı (Network)',
        'C)Çerçeve (Frame) - Veri Bağlantısı Katmanı (Data Link)',
        'D)  Bit - Uygulama Katmanı (Application)',
      ],
      dogruCevapIndex: 3, // D şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Bir bilgisayara statik olarak şu bilgiler girilmiştir:IP Adresi: 192.168.1.50 Alt Ağ Maskesi: 255.255.255.0 Varsayılan Ağ Geçidi (Gateway): 192.168.2.1Bu bilgisayarın internete çıkamamasının temel nedeni nedir?',
      siklar: [
        'A)  IP adresinin geçersiz olması',
        'B) Ağ geçidinin (Gateway) bilgisayar ile farklı bir ağ bloğunda yer alması',
        'C) Alt ağ maskesinin yanlış yazılması',
        'D) Statik IP yerine DHCP kullanılması zorunluluğu',
      ],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Evinizden internete bağlanmak için bir servis sağlayıcıdan (ISS) hizmet alırken, evdeki analog sinyalleri dijital sinyallere (ve tersine) çeviren cihaz hangisidir?',
      siklar: ['A) Switch', 'B) Access Point', 'C) Modem', 'D) Hub'],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),
  ];

  // 2. BilgisayarSistemBakimOnarimSorulari
  static List<Soru> BilgisayarSistemBakimOnarimSorulari = [
    Soru(
      soruMetni: 'Tam Güç Kaybını Hangi Terim Tanımlar?',
      siklar: [
        'A) Ani Voltaj Düşüşü-Brownout',
        'B) Ani Voltaj Yükselmesi-Spike',
        'C) Kesilme-Blackout',
        'D) Ani Kesilme-Sag',
      ],
      dogruCevapIndex: 2, // C şıkkı (32) doğru
    ),
    Soru(
      soruMetni: 'Hangi Terim Güçteki Bir Düşüşü Tanımlar?',
      siklar: [
        'A) Kesilme-Blackout',
        'B) Ani Voltaj Düşüşü-Brownout',
        'C) Ani Voltaj Yükselmesi-Spike',
        'D) Artış-Surge',
      ],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Hangi Terim Sürekli Olarak Şarj Edilen Bir Aküden Faydalanan Bir Sistemi Tanımlar?',
      siklar: [
        'A)  Yedek Güç Kaynağı -Standby Power Supply- (Sps)',
        'B) Kesintisiz Güç Fişi -Uninterruptible Power Plug- (Upp)',
        'C)  Kesintisiz Güç Kaynağı -Uninterruptible Power Supply- (Ups)',
        'D) Kesintisiz Güç Birimi -Uninterruptible Powerunit- (Upu)',
      ],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni: 'Bir Artış Bastırıcı Ne İşe Yarar?',
      siklar: [
        'A) Voltajı Belli Bir Düzeyin Altında Tutar.',
        'B) Daha İyi İletim İçin Voltajı Yüksek Tutar.',
        'C) Bir Binanın Tesisat Boşluğunda Kullanılır.',
        'D) Voltaj Düzeylerini Aynı Seviyeye Getirmek İçin Yazılımla Çalışır',
      ],
      dogruCevapIndex: 0, // A şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Aşağıdakilerinden Hangisi Hat Üzerinde Meydana Gelen Gürültü Kaynaklarındandır?',
      siklar: [
        'A) Radyo Yayınları',
        'B) Yüksek Elektromanyetik Girişim (Emı)',
        'C) Hat Üzerindeki Bağlantılar',
        'D) Hepsi',
      ],
      dogruCevapIndex: 3, // D şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Ani Voltaj Yükselmesinin (Spike ) Sebepleri Aşağıdakilerden Hangisidir?',
      siklar: [
        'A) Şimşekler ',
        'B) Statik Elektrik',
        'C) Yardımcı Sistemdeki Bir Kesinti ',
        'D) Hepsi',
      ],
      dogruCevapIndex: 3, // D şıkkı doğru
    ),

    Soru(
      soruMetni: 'Aşağıdakilerden Hangisi Ups Çeşitlerinden Değildir?',
      siklar: [
        'A) Line İnteractive ',
        'B)Power/Line Conditioner ',
        'C) Online ',
        'D) Offline',
      ],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Aşağıdaki Ups Lerden Hangisi Gerilim Değişiminde Devreye Girene Kadar 2 İla 7 Milisaniye Arasında Bir Zaman Harcar',
      siklar: [
        'A)  Offline Ups',
        'B) Online Ups',
        'C)  Line İnteractive Ups ',
        'D) Hiçbiri',
      ],
      dogruCevapIndex: 0, // A şıkkı doğru
    ),

    Soru(
      soruMetni: 'Aşağıdakilerden Hangisi İle Veri Çıktısı Yapılabilir?',
      siklar: ['A)Yazıcı ', 'B) Ram ', 'C) Cdrom ', 'D) Ana Kart'],
      dogruCevapIndex: 0, // A şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Bilgisayarda Aritmetiksel İşlemleri Yapıp Sonuçlandıran Donanım Birimi Aşağıdakilerden Hangisidir?',
      siklar: ['A) Ram ', 'B)  Cpu ', 'C) Ana Kart ', 'D) Hard Disk'],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Donanımlar Arası Elektronik Veri İletişimini Sağlayan Birime Ne Ad Verilir?',
      siklar: ['A) Rom ', 'B) Kasa', 'C) Ana Kart ', 'D)Güç Kaynağı'],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni: 'Aşağıdakilerden Hangisi Ek Donanım Birimi Değildir? ',
      siklar: ['A) Tv Kartı ', 'B)Ses Kartı', 'C) Yazıcı ', 'D) Ram'],
      dogruCevapIndex: 3, // D şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Bilgisayarda Bilgileri Kalıcı Olarak Depolamak İçin Kullanılan Birim Aşağıdakilerden Hangisidir?',
      siklar: ['A) Hard Disk', 'B) Cpu', 'C) Ram ', 'D) Ana Kart'],
      dogruCevapIndex: 0, // A şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Merkezi İşlem Biriminin Takıldığı Kart Aşağıdakilerden Hangisidir?',
      siklar: ['A) Hard Disk', 'B)Ana Kart', 'C) Ekran Kartı ', 'D) Ses Kartı'],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Bilgisayarda İşlenen Verileri Monitöre Aktaran Birim Aşağıdakilerden Hangisidir?',
      siklar: ['A)Hard Disk', 'B)Ana Kart', 'C) Ekran Kartı ', 'D) Ses Kartı'],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Bilgisayarda İşlenen Ses Verilerini Hoparlöre Aktaran Birim Aşağıdakilerden Hangisidir?',
      siklar: [
        'A) Hard Disk',
        'B) Ana Kart',
        'C) Ekran Kartı ',
        'D) Ses Kartı',
      ],
      dogruCevapIndex: 3, // D şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Uzak Mesafeler Arasında Ki Bilgi İletişinin Sağlanması İçin Kullanılan Kart Aşağıdakilerden Hangisidir?',
      siklar: ['A) Fax Modem', 'B) Ağ Kartı ', 'C) Cd Rom', 'D) Ses Kartı'],
      dogruCevapIndex: 0, // A şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Kısa Mesafeler Arasında Ki Bilgi İletişinin Sağlanması İçin Kullanılan Kart Aşağıdakilerden Hangisidir?',
      siklar: ['A)Fax Modem', 'B) Ağ Kartı', 'C) Cd Rom', 'D) Ses Kartı'],
      dogruCevapIndex: 1, // B şıkkı doğru
    ),

    Soru(
      soruMetni: 'Aşağıdaki Birimlerden Hangisine Kalıcı Bilgi Depolanmaz?',
      siklar: ['A)Hard Disk', 'B)Disket', 'C) Ram', 'D) Cd Rom'],
      dogruCevapIndex: 2, // C şıkkı doğru
    ),

    Soru(
      soruMetni:
          'Hard diskler İçin aşağıda Verilen Disket Bilgilerinden Hangisi Yanlıştır?',
      siklar: [
        'A)Defalarca Format Atılabilir.',
        'B) Bilgi Kaydı Yapılabilir',
        'C) Aşırı Sıcak Veya Nemden Bozulabilir',
        'D)Manyetik Alandan Etkilenmez.',
      ],
      dogruCevapIndex: 3, // D şıkkı doğru
    ),
  ];

  // Kategori ismine göre doğru soruları getiren fonksiyon
  static List<Soru> getSorularByKategori(String kategoriAdi) {
    if (kategoriAdi == 'CISCO Kursu Hazırlık Soruları') {
      return CISCOsorulari;
    } else if (kategoriAdi == 'Bilgisayar Sistem Bakım Onarım') {
      return BilgisayarSistemBakimOnarimSorulari;
    }
    return BilgisayarSistemBakimOnarimSorulari;
  }
}
