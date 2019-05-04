## Lex ile Matematiksel İşlemler
#### Tanım
Proje de Lex (Lexical Analyzer) ile matematiksel işlemler yapılmıştır.
Lex kullanarak syntax tanımlaması yapılmış, Yacc kullanarak syntax kuralları kontrol edilmiştir.
Proje BNF (Bacus Naur Form) yapısına uygun olarak yazılmıştır.

```Flex
%%

{dig} {digi();}
{add} {op=1;}
{sub} {op=2;}
{mul} {op=3;}
{div} {op=4;}
{pow} {op=5;}
{letter}({letter}|{dig})* {metin();}
{ln} {printf("\n Son cevap :%f\n\nİşleminizi giriniz: ",a);}

%%
```

#### Kurulum
+ (Linux Ortamı İçin) 

Yerel deponuza klonladığınız projenin çalışması için sisteminizde Bison ve Flex paketleri yüklü olması gerekmektedir.

```bash
sudo apt-get install bison
sudo apt-get install flex
```

#### Çalıştırma
Proje dizini içerisindeyken aşağıdaki terminal komutları;
```bash
lex matematiksel_islemler.l
cc lex.yy.c -efl
./a.out
```
yazılarak proje çalıştırılabilir.

![Ekran Alıntısı](https://user-images.githubusercontent.com/9505978/57183365-b6b51480-6eb4-11e9-9405-8ecf5d9e5e25.PNG)
