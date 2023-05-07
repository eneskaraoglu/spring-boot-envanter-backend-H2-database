# ek-envater-h2- data base
spring boot project;
Spring Boot 3.0.6
Java 17
H2 Data base
http://localhost:8080/h2-console/

Spring data jpa
JpaRepository
Spring data rest
DAO 
Lombok
spring-boot-starter-mail
AOP for logging --> t_envater_log
exception handling


Spring data jpa;
Spring data rest servis endPoint;
CRUD
      
Katalog 
     CRUD işemleri buradan yapıldı  
    katalogs
```sh
http://127.0.0.1:8080/data-rest/katalogs{?page,size,sort}
```

Depo CRUD işlemleri için;
depoes
```sh
    http://127.0.0.1:8080/data-rest/depoes{?page,size,sort}",
```

Depo Envanter CRUD işlemleri için;
depoEnvanters
```sh
	http://127.0.0.1:8080/data-rest/depoEnvanters{?page,size,sort}",
```

```sh
Envanter tanımlama işlemi için bu servis kullanılacak; Create, Read, Update, Delete
Burada depoi katalog gibi kontroller yapıldı.
Eksik bilgi varsa düzgün bir formatta exception gelmektedir.
POST /env/envanter HTTP/1.1
Host: 127.0.0.1:8080
Content-Type: application/json
Content-Length: 277

{
                "envanterAdi": "urun21",
                "envanterKodu": "Test Ürünümüz Üç",
                "envanterMiktar": 12,
                "kritikMiktar": 100,
                "katalogId":2,
                "depoEnvanter" :  { "depoId" : 2}
                
}
```

Buradan envanter harekleri tanımlandı Create, Read, Update, Delete

- (eksi) işlem için çıkış kayıtı, diğer türlü giriş kayıtı yapıldı.
Bu işlemler sırasında , envanter miktarı, depo miktarı güncellendi.
Kontrol miktar için işlem burada yapıldı;
İşlemin temel logic'i burada yer almaktadır.
EnvanterHareketDAOJpaImpl.java
```sh
http://127.0.0.1:8080/env/envanterHareket

POST /env/envanterHareket HTTP/1.1
Host: 127.0.0.1:8080
Content-Type: application/json
Content-Length: 167

{
                "depoId": 3,
                "envanterId": 3,
                "hareketMiktar": -30,
                "aciklama": "- ise çıkış işlemi, diğer türlü giriş işlemi gibi düşünüldu"
}
```

Envanter sorgulama, envater adı, depo kodu, bölge, şehir , adres, katalog a göre sorgu yapılabilir.
Dönüş olarak yukarıda bilgiler dışında envanter miktar ve depo miktar verecek.
Veri tabanına view eklendi, o view üzerinde sorgu yapıldı.
```sh
http://127.0.0.1:8080/env/envanter

GET /env/envanter HTTP/1.1
Host: 127.0.0.1:8080
Content-Type: application/json
Content-Length: 211

{
                "envanterAdi": null,
                "depoKod": null,
                "bolge": null,
                "sehir": null,
                "adres": null,
                "katalogKodu": "K3"
}
```
