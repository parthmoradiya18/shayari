import 'package:flutter/material.dart';

List img = ["alchol.jpg","friend.jpg","attitude.jpg","birthday.jpg","breakup.jpg","fun.jpg","god.jpg","goodluck.jpg","holi.jpg","love.jpg","motiv.jpg","politic.jpg","rain.jpg","romantic.jpg","sad.jpg"];

List Myshayri = ["alchol_shayari","friend_shayari","attitude_shayari","birthday_shayari","breakup_shayari","fun_shayari","god_shayari","goodluck_shayari","holi_shayari","love_shayari","motiv_shayari","politic_shayari","rain_shayari","romantic_shayari","sad_shayari"];

List fonts = ["font1","font2","font3","font4","font5","font6","font7","font8","font9","font10","font11","font12","font13","font14","font15","font16","font17","font18","font19","font20","font21","font22","font23",];
List list = [];
int tmp_index=0,text_index=0,font=0;
String emo = "😊😍😘❤👫😊\n";//    edit
bool back_color = false , text_color =false,back_color1 = false ;    //   edit
double cur_size = 25;                           //    edit
String Cur_font = "font1";                      //    edit
List a = [];                  //   first
bool tmp_color = false;        //    third
int col_ind = 0;         //   third

List <Color> mycolor=[
  Colors.grey,
  Colors.blue,
  Colors.greenAccent,
  Colors.blueGrey,
  Colors.cyan,
  Colors.deepPurple,
  Colors.blueAccent,
  Colors.green,
  Colors.blue,
  Colors.grey,
  Colors.blue,
  Colors.greenAccent,
  Colors.blueGrey,
  Colors.cyan,
  Colors.deepPurple,
  Colors.blueAccent,
  Colors.green,
  Colors.blue,
  Colors.pink.shade200,
  Color.fromRGBO(168, 237, 234,100),
  Color.fromRGBO(254, 214, 227,100),
];

List alchol_shayari = [
  """रात हम पिये हुए थे मगर,

आप की आंखे भी शराबी थी,

फिर हमारे खराब होने में,

आप ही कहिए क्या खराबी थी।""",
  """रिन्दाने-जहां से ये नफरत

ऐ हजरते-वाइज क्या कहना,

अल्लाह के आगे बस न चला

बंदों से बगावत कर बैठे।
""",
  """यूँ बिगड़ी बहकी बातों का

कोई शौक़ नही है मुझको,

वो पुरानी शराब के जैसी है

असर सर से उतरता ही नहीं।""",
  """हट गई नजरों से नजरें मैकदा सा लुट गया,

मिल गई नजरों से नजरें मैकशी होने लगी।""",
  """गमे-दुनिया में गमे-यार भी शामिल कर लो,

नशा बढ़ता है शराबें जो शराबों में मिलें।""",
  """नतीजा बेसबब महफिल से उठवाने का क्या होगा,

न होंगे हम तो साकी तेरे मैखाने का क्या होगा।""",
  """मेरी तबाही का इल्जाम अब शराब पर है,

करता भी क्या और तुम पर जो आ रही थी बात।""",
  """कहीं सागर लबालब हैं कहीं खाली पियाले हैं,

यह कैसा दौर है साकी यह क्या तकसीम है साकी।""",
  """मैं तोड़ लेता अगर वो गुलाब होती,

मैं जवाब बनता अगर वो सवाल होती,

सब जानते हैं मैं नशा नहीं करता,

फिर भी पी लेता अगर वो शराब होती।""",
  """तोहफे में मत गुलाब लेकर आना,

मेरी क़ब्र पर मत चिराग लेकर आना,

बहुत प्यासा हूँ बरसों से मैं,

जब भी आना शराब लेकर आना।""",];

List <String> friend_shayari =[
  """हमने उस वेबफा से प्यार कर लिया,
      सारे गम को अपने अंदर भर लिया,
      और हमने जब आप जैसा दोस्त पा लिया,
      तो सारे गम को चन्द लम्हो में भुला दिया. """,

  """ हम आपसे सच्ची दोस्ती करते हैं,
      चाहे तो कभी आजमा कर देख लेना,
      हम तो है एक दम खरा सोना,
      चाहे तो हमे आग में जला कर देख लेना.""",

  """ ज़िन्दगी तो पल पल चलती ही रहती है,
      रौशनी भी हर पल मिलती ही रहती है,
      प्यार की महक भी मिलती ही रहती है,
      पर सच्ची दोस्ती बहुत कम ही मिलती रहती है.""",

  """ कोई रूठे तो उसे मना लिया करो,
      कोई टूटे तो उसे सम्भाल लिया करो,
      कुछ दोस्त बहुत अज़ीज होते है,
      दोस्ती में कभी मुलाकात भी कर लिया करो.""",

  """ ज़िन्दगी के कुछ पल बहुत खास होते है,
      जो जिंदगी को महकाने के लिए होते है,
      आपसे दोस्ती हमारी एक प्यारे इत्तेफाक से हुई,
      ये इत्तेफाक भी बड़े इत्तफाक से होते है.""",

  """ दोस्ती वो है जिसमे ज़िन्दगी महकती है, दोस्ती में जिंदगी
      शुरू या खत्म हो कोई मायने नही रखती है,
      ज़िन्दगी में आप जैसा दोस्त मिल जाये,
      तब ये ज़िन्दगी जन्नत से कम नही लगती है.""",

  """ न हमसे दोस्ती में जुदा होने की कोशिश करना,
      न हमसे दोस्ती में खफा होने की कोशिश करना,
      अगर हो जाये दोस्ती में कोई नादानी,
      तो उसे दोस्ती में माफ़ करने की कोशिश करना.""",

  """ हम तो अपने दोस्तों के सारे गम चुरा लेते हैं,
      दोस्ती का रिश्ता बख़ूबी निभा लेते हैं,
      हम अपने दोस्तों से इतना प्यार करते हैं,
      की दुश्मन भी हमसे दोस्ती करने का इरादा बना लेते है.""",

  """वो दोस्ती ही क्या जिसमे आप जैसा यार न हो,
      वो यार ही क्या जिसके लिए हमारे दिल में प्यार न हो,
      वैसे तो हम सब कुछ लुटा सकते हैं,
      और वो ज़िन्दगी ही क्या जो दोस्त पर जान निसार न हो. """,];

List attitude_shayari = [
  """सर झुकाने की आदत नहीं आंसू बहाने की आदत नहीं,
हम बिछड़ गए तो रोओगे,
क्योंकि हमारी लौट के आने की आदत नहीं.""",
  """कागजो पर तो अदालते चलती है
हम तो रॉयल छोरे है
फैसला On The Spot करते है.""",
  """अभी मैंने खुद को शीशे में देखा,
तो पता चला कि दुनिया में मासूम लोग
आज भी जिन्दा हैं.""",
  """हम तो इतने रोमान्टिक है की
हम अगर थोड़ी देर मोबाइल हाथ मै लेले..
तो वो भी गरम हो जाता है.""",
  """शरीफ तो हम बचपन से थे पर क्या करें,
दिल तोड़ना लड़कियों ने सिखाया
तो हड्डिया तोड़ना यारों ने सिखाया.""",
  """बरसात के मकोड़े हमें यही सिखाते हैं कि,
जिन लोगों के ‘ पंख ‘ लग जाते हैं,
वो बस कुछ ही दिन के मेहमान होते हैं..""",
  """जंग लगी तलवारो पर अब धार लगानी होगी,
कुछ लोग औकात भूल गए अपनी
शायद उन्हें याद दिलानी होगी.""",
  """हम सिंगल ही सही,
जिसकी Girlfriend है,
उसने कौन सी लंका जीत ली है.""",
  """हमको जंजीरो में कैद करने का सपना मत देख,
क्युंकि हम वो आदमखोर शेर हैं,
जिसका भी शिकार करतें हैं,
उसका जिस्म तो क्या रूह भी दम तोड़ देती हैं.""",
  """तु क्या हमारी बराबरी करेगी ‪पगली,
हमारी तो नींद में खींची हुई फ़ोटो
भी लोगों की लिए पोज़ बन जाती है !""",
  """इतना Attitude मत दिखा पगली
जिस पावडर से तू मेकअप करती है
उससे हम कैरम खेला करते हैं !""",
  """दूसरों के शिकार को चाटने का काम गीदड़ करते हैं,
मैं वो शेर हूँ जिसने जंगल में कदम रखा,
तो कोई परिंदा पर मारने की हिम्मत नही करता.""",
  """सुन तू मेरे लिए मेकअप कर
या किसी और से ब्रेकअप कर
तू रिजेक्ट थी रिजेक्ट हैं
और रिजेक्ट ही रहेगी.""",];

List birthday_shayari = [
  """उगता हुआ सूरज दुआ दे आपको,
खिलता हुआ फूल खुशबू दे आपको,
हम तो कुछ देने के काबिल नहीं है,
उपर वाला हज़ार खुशिया दे आपको.
Happy Birthday""",
  """हर राह आसन हो,
हर राह पे खुशिया हो,
हर दिन ख़ूबसूरत हो,
ऐसा ही पूरा जीवन हो,
यही हर दिन मेरी दुआ हो,
ऐसा ही तुम्हारा हर जन्मदिन हो....!!""",
  """ फूलों ने अमृत का जाम भेजा है,
सूरज ने गगन से सलाम भेजा है,
मुबारक हो आपको नया जन्मदिन,
तहे-दिल से हमने ये पैगाम भेजा है...""",
  """जन्मदिन तुम्हे मुबारक हो..
हर दिन युही खुस रहो...
खुशियाँ और तरक्की तुम्हारे साथ हो...
हर साल जन्मदिन मानते रहो...""",
  """बार बार यह दिन आए,
बार बार यह दिल गाये,
तू जिए हजारो साल,
येही है मेरी आरज़ू..
!!!!....जन्मदिन की खूब शुभकामनाये....!!!""",
  """सूरज रौशनी ले कर आया,
और चिड़ियों न गाना गाया,
फूलों ने हंस हंस कर बोला,
मुबारक हो तुम्हारा जन्मदिन आया....""",
  """ उगता हुआ सूरज दुआ दे आपको,
खिलता हुआ फूल खुशबु दे आपको,
मैं तो कुछ दे नहीं सकता, देने वाला लंबी उम्र दे आपको !
जन्मदिन हार्दिक शुभकामनाएं..
""",
  """आप वोह गुलाब हो जोह भागों मे नही खिलते,
अस्मा के फरिश्ते भी आप पे फ़क्र है करते,
कुह्सी आपकी मेरे लिए है अनमोल,
जन्म दिन आप मनाए हँसते हँसते !!!""",
  """फोलो ने बोला खुशबू से,
खुशबू ने बोला बदल से,
बदल ने बोला लहरों से,
लहरों ने बोला सूरज से,
वही हम कहते है आपको दिल से,
Happy Birthday To U..""",
  """ ख़ुशी से बीते हर दिन,
हर सुहानी रात हो,
जिस तरफ आपके कदम पड़े,
वहा फूलो की बरसात हो.
शुभ जन्मदिन हो आपका हमेशा.
""",
  """ हर लम्हा आपके होठों पे मुस्कान रहे,
हर ग़म से आप अनजान रहे,
जिसके साथ महक उठे आपकी ज़िन्दगी,
हमेशा आपके साथ वो इंसान रहे.""",
  """जन्मदिन के ये ख़ास लम्हें मुबारक,
आँखों में बसे नए ख्वाब मुबारक,
जिंदगी जो लेकर आई है आपके लिए आज…
वो तमाम खुशियों की हंसीं सौगात मुबारक!!""",
  """ दूर है तो क्या हुआ आज का दिन तो हमे याद है,
तुम ना सही पर तुम्हारा साया तो हमारे साथ है,
तुम्हे लगता है हम सब भूल जाते है,
पर देखलो तुम्हारा जन्मदिन तो हमे याद है!!"""];

List breakup_shayari = [
  """Unhe Nafrat Thi Hamse To Izhaar Kyu Kiya,
Dena Hi Tha Zeher To Phir Pyar Kyu Kiya,
De Kar Zeher Kehte Hai Peena Hoga,
Aur Jab Pee Liya .""",
  """Hum To Tere Dil Ki Mehfil Sajane Aaye The,
Teri Kasam Tujhe Apna Banane Aaye The.
Kis Baat Ki Saza Dee Tune Ham Ko,
Bewafa Hum To Tere ..""",
  """Kisi ki achhai ka Itna bhi fayda mat uthao k
wo bura banne k liye majboor ho jaye
Bura" aksar wahi banta hai
Jo Achha ban k toot Chuka hota hai""",
  """Kabhi takdeer ne sath choda kabhi zindagi ne aajmaya
Kabhi gero ne barbaad kiya toh kabhi apno ne rulaya
Koi nahi hai aaj ke waqt me kisi .""",
  """Dil me aane ka to rasta hota hai par jane ka nhi
ish liye jab bhi koi insan jata hai dil tod kar hi jata hai""",
  """Tere pyaar ka sila har haal mein denge,
Khuda bhi maange ye dil toh nikaal denge,
Agar dil ne kaha tum bewafa ho,
Toh is dil ko bhi seene se nikaal denge…!!""",
  """Khat likhta hu khoon se siyahi na samjhana.Marta hu teri yaad me bewafai na samjhana..""",
  """Bade Ajeeb Hai Yeh Zindagi Ke Raste,
Anjane Raah Par Kuch Log Dost Ban Jate Hai,
Milne Ki Khushi Wo Chahe De Ya Na De,
Par Bichadne Ka .""",
  """Jinki shayari me hoti hai siskiya aksar
wo shayar nahi kisi bewafa ke deewane hote hai""",
  """Manzil kya hai, raasta kya hai,
Hausla agar ho to faasla kya hai
Wo to saza deke door jaa baithye
Ab kisse puchu meri khata kya hai""",
  """Dil Tod Diya To Chita Bhi Jala Dena
Kafan Na Mile To Dupatta Uda Dena
Agar Koi Puche Rog Kya Tha
To Nazren Jhuka K Mohobbat Bata Dena""",
  """Yeh Ishq Wale Wafa Kee Keemat Kya Jaane
Bewafa Hai Yeh Gham-e-Mohabbat Kya Jaane
Milta Ho Jinhe Har Mod Pe Naya Humsafar
Woh Sachhe Pyaar Kee Keemat Kya Jane""",
  """Mehfil Na Sahi Tanhai To Milti Hai,
Milan Na Sahi Judai To Milti Hai,
Kaun Kehta Hai Ki Pyar Me Kuch Nai Milta,
Wafa Na Sahi Bawafai To""",];

List fun_shayari = [
  """बिना बात की लड़ाई,
और मेडिकल की पढ़ाई,
अकसर लड़कियां ही करती हैं।""",
  """सुबह सुबह घरवाले ऐसे उठाते हैं,
जैसे कि तीसरा विश्वयुद्ध शुरू हो गया हैं,
और मैं आखरी सैनिक बचा हुआ हूँ।""",
  """ये कलयुग हैं साहब,
यहाँ भीड़ को रश कहते हैं,
और जो भीड़ में पसंद आ जाए,
उसे क्रश कहते हैं…""",
  """वक़्त के साथ सब बदल जाता हैं,
किसी जमाने में जिसे ठेंगा कहते थे,
आज उसे लाइक कहते हैं…""",
  """यहाँ हर एक आशिक की,
कुछ यूँही हैं कहानी,
मजनू चाहती लैला को,
और लैला किसी और कि दीवानी हैं..""",
  """धोखा मिला मुझें प्यार में,
ज़िंदगी पूरी उदास हो गई,
सोचा आग लगा देंगे इस दुनिया को,
कमबख्त वैसे ही कॉलोनी में कोई दूसरी आ गई…""",
  """जब तिरछी नजरों से उसने देखा,
हम तो मदहोश ही हो गए,
जब पता चला उनकी नजरें ही तिरछी हैं,
हम तो पूरी तरह बेहोश हो गए..""",
  """हमारी किस्मत भी कुछ ऐसी हैं,
ज़मीन मिलती है बंजर और,
एडमिन मिलती हैं खंजर…""",
  """इश्क़ के चर्चे काफी सारे हैं,
हुस्न के पर्चे भी काफी सारे है
इश्क़ करने से पहले समझ लेना,
क्योंकि इसमें खर्चे भी काफी सारे है..""",
  """जिसका कोई नहीं होता,
उसका मोबाइल होता हैं,
और जिसका मोबाइल होता,
वो किसी इंसान का नहीं होता..""",
  """ऐसा कुछ था उसके होठों पर,
इसलिए तो शर्माती थी,
हँसने के बाद पता चला,
कमबख्त तम्बाकू खाती थी..""",
  """जिस किसी का भी शुगर हैं,
कृपया वो सब्र न करें,
क्योंकि सब्र का फल मीठा होता हैं..""",
  """ट्विंकल ट्विंकल मेरे यार,
तेरी गर्लफ्रैंड गई हैं बाज़ार,
उसको मिल गया दूसरा यार,
और तू हो गया फालतू यार..""",
  """ये आज का दौर हैं मेरे दोस्त,
यहाँ भीड़ को रश कहा जाता हैं,
और जो इस भीड़ में पसंद आता हैं,
उस पसंद को क्रश कहते हैं…""",
  """अगर आपकी इच्छा हैं,
सब आपको अच्छा कहे,
तो अपना नाम ही अच्छा रख ले…""",
];

List god_shayari = [
  """हारने ना देना मेरे प्रभु कठिन इम्तेहान है…
      जीत में ही प्रभु हम दोनों का मान है…
      क्योंकि आपके भरोसे हूँ मैं यही मेरी पहचान है…
      जय माँ जगदम्बा """,

  """ जब भटक भटक कर हार गया…
      और कदम कदम पर ठुकराया गया तब…
      आपका ही द्वार नजर आया मुझको मेरे श्याम…
      तेरे ही चरणों में सुख पाया…""",

  """ईश्वर पर आप तभी विश्वास कर सकते हैं,
     जब आपको खुद पर विश्वास हो क्योकिईश्वर बाहर नही हमारे अंदर ही हैं!! """,

  """ जब ईश्वर मनुष्य की परीक्षा लेते हैं,
     तब वो मनुष्य का सामर्थ्य भी बढ़ा देते हैं,
     ताकि वो अधिक बुद्धिमान और अधिक ताकतवर बनें!!""",

  """ भगवान बोलते है…तू करता वही है, 
     जो तू चाहता है!पर होता वही है जो मैं चाहता हूँ,
     तू वही कर जो मैं चाहता हूँ,फिर होगा वही जो तू चाहता है…!""",

  """ मेरे जिस्म जान में भोलेनाथ नाम तुम्हारा है,
     आज अगर मैं खुश हूँ तो यह एहसान भी तुम्हारा है,
     थामा हुआ है हाथ मेरा आपने मुझको मालूम है,
     मेरे हर पल हर लम्हे में मेरे भोलेनाथ प्यार तुम्हारा है!""",

  """ टूटे हुए प्याले में जाम नहीं आता
इश्क़ में मरीज को आराम नहीं आता
ये बेवफा दिल तोड़ने से पहले ये सोच तो लिया होता
के टुटा हुआ दिल किसी के काम नहीं आता ……..
 """,

  """ फूल सबनम में डूब जाते है,
झख्म मरहम में डूब जाते है |
जब आते है खत तेरे, हम तेरे गम में डूब जाते है.| """,


  """ वो बेवफा हमारा इम्तेहा क्या लेगी…
मिलेगी नज़रो से नज़रे तो अपनी नज़रे ज़ुका लेगी…
उसे मेरी कबर पर दीया मत जलाने देना…
वो नादान है यारो… अपना हाथ जला लेगी. """,

  """ फूल सबनम में डूब जाते है,
झख्म मरहम में डूब जाते है |
जब आते है खत तेरे, हम तेरे गम में डूब जाते है.| """,

  """ वक्त नूर को बेनूर कर देता है,
छोटे से जख्म को नासूर कर देता है,
कौन चाहता है अपने से दूर होना,
लेकिन वक्त सबको मजबूर कर देता है ! """,

  """ जिंदगी हे सफर का सील सिला,
कोइ मिल गया कोइ बिछड़ गया,
जिन्हे माँगा था दिन रत दुआ ओमे,
वो बिना मांगे किसी और को मिल गया. """,];

List goodluck_shayari = [
  """ये रात चाँदनी बनकर आँगन में आये,

ये तारे लोरी गा कर आपको सुनाएं,

आयें आपको इतने प्यारे सपने यार...

कि नींद में भी आप हलके से मुस्कुराएं।""",
  """ईश्वर न करे आपको कोई ग़म हो,

और सिर्फ खुशियाँ और हँसी मिले,

ग़म जब भी बढ़ चले आपकी ओर,

ईश्वर करे रास्ते में उसे पहले हम मिले।""",
  """जन्मदिन के ये बहुत ख़ास लम्हे मुबारक,

आँखों में बसे नए नए ख्वाब मुबारक,

जिंदगी जो लेकर आयी है आपके लिए आज,

वो तमाम खुशियों की हसी सौगात मुबारक।""",
  """ज़िन्दगी की कुछ खास दुआएं लेलो हमसे,

जन्मदिन पर कुछ नजराने लेलो हमसे,

भर दे रंग जो तेरे जीवन के पलो में,

आज वो हँसी मुबारक-बाद लेलो हमसे।""",
  """खुशी से बीते हर दिन

हर सुहानी रात हो,

जिस तरफ आपके कदम पड़े

फूलों की बरसात हो।

जन्मदिवस की शुभकामनाये...!""",
  """दिल से मेरी दुआ है के खुश रहो तुम,

मिले न कोई गम जहाँ भी रहो तुम,

समंदर की तरह दिल है गहरा तुम्हारा,

सदा खुशी से भरा रहे दामन तुम्हारा।""",
  """ये दिन ये महिना ये तारीख जब जब आयी,

हमने प्यार से जन्मदिन की महफ़िल सजाई,

हर शमा पर नाम लिख दिया दोस्ती का,

इसकी रौशनी में चाँद जैसी तेरी सूरत समाई।""",
  """सुबह का मौसम और आपकी याद;

हलकी सी ठंडक और चाय की प्यास;

यारों की यारी और यारी की मिठास;

शुरू कीजिए अपना दिन मेरी सुप्रभात के साथ।

सुप्रभात!""",
  """एक और प्यारी सी सुबह हो गई;

ज़िंदगी की खुशनुमा फ़िज़ा हो गई;

मुबारक हो आपको आज का दिन;

जिसमें शामिल आपकी दुआ हो गई।

सुप्रभात!""",
  """ये भी एक दुआ है खुदा से;

किसी का दिल ना दुखे मेरी वजह से;

ऐ खुदा कर दे कुछ ऐसी इनायत मुझ पर,

कि खुशियाँ ही खुशियाँ मिलें सबको मेरी वजह से।

सुप्रभात!""",
  """आँखें खोलो भगवान का नाम लो,

सांस लो ठंडी हवा का जाम लो,

फिर ज़रा मोबाइल हाथ में थाम लो,

और हमसे दिलकश सुबह का पैगाम लो.

सुप्रभात""",
  """सूरज निकल रहा है पूरब से;

दिन शुरू हुआ आपकी याद से;

कहना चाहते हैं हम आपको दिल से;

हर दिन हो जाये अच्छा आपकी प्यारी सी मुस्कान से।

सुप्रभात!""",
  """आसमान का चाँद तेरी बाहों में हो;

तू जो चाहे तेरी राहों में हो;

हर वो ख्वाब हो पूरा जो तेरी आँखों में हो;

खुश किस्मती की हर लकीर तेरे हाथो में हो।

तह दिल से बहुत सारी शुभकामनाएं"""];

List holi_shayari = [
  """जमाने के लिए आज होली है,
मुझे तो तेरी यादे रोज रंग देती है…
Happy Holi""",
  """मोहब्ब्बत के रंग तुम पर बरसा देंगे आज,
अपने प्यार की बौछार से तुम्हे भीगा देंगे आज
तुम पे बस निशान हमारे ही दिखेंगे
कुछ इस तरह रंग तुम्हे लगा देंगे आज.
Happy Holi Meri Jaan""",
  """प्यार के रंगों से भरो पिचकारी, 
स्नेह के रंगों से रंग दो दुनिया सारी, 
ये रंग न जाने न कोई जात न बोली, 
सबको हो मुबारक ये हैप्पी होली!""",
  """निकलो गलियों में बना के टोली, 
भीगा दो आज हर लड़की की चोली, 
मुस्करा दे तो उसे बाहों में भर लो.. 
वरना निकल लो कह के हैप्पी होली।""",
  """दिल सपनो से houseful है, 
पूरे होंगे वो doubtful है, 
इस दुनिया में हर चीज़ wonderful है, 
पर ज़िन्दगी आप जैसे लोगों से ही colorful है!""",
  """इस बार होली ऐसी मनाऊँगा, 
खुद को करके काला पीला, 
तेरी गली पहुँच जाऊँगा.. तू सोचती रह जाएगी, 
और तेरे भाई के सामने तुझे रंग लगा जाऊँगा…. 
Happy holi""",
  """सूरज की पहली किरण में 7 रंग हो,
बागों में फूलों की खुशबू संग हो, 
आप जब भी खोलें अपनी पलकें, 
आपके चहरे पर होली का रंग हो..Happy Holi """,
  """अर्ज़ है … सर में दर्द हो तो खा लो, 
सिरदर्द की गोली… वाह …वाह .. 
सर में दर्द हो तो खा लो सिरदर्द की गोली,
.. वाह …वाह ..मुबारक हो,
आपको हैप्पी होली.. हैप्पी होली।""",
  """बदरी छाई है फागुन की, 
फिर हुड़दंग मचाएंगे एक रंग में सबको,
रंगकर फिर से होली मनाएंगे… Happy Holi""",
  """त्यौहार ये रंग का; त्यौहार ये भंग का; 
मस्ती में मस्त हो जाओ आज; 
होली है आई; होली में दुगना मज़ा है,
यार के संग का! होली मुबारक हो!""",
  """भगवान् करे हर साल चाँद बन के आये, 
दिन का उजाला बन के आए …
कभी दूर ना हो आपके चेहरे से हँसी, 
ये होली का त्यौहार ऐसा मेहमान बन के आये,
Happy Holi""",
  """पिचकारी की धार, 
गुलाल की बौछार, 
अपनों का प्यार, 
यही है यारों होली का त्यौहार।""",
  """लाल हो या पीला, 
हरा हो या नीला, 
सुखा हो या गिला, 
एक बार रंग लग जाये,
तो हो जाये रंगीला… 
HAPPY HOLI""",
  """होली.. होली होती है दीवाली मत समझना , 
हम तुम्हारे घर आये तो हमे मवाली मत समझना 
Happy Holi""",
];

List love_shayari = [
  """
      दिल का हाल बताना नही आता,
      हमे ऐसे किसी को तड़पाना नही आता,
      सुनना तो चाहतें हैं हम उनकी आवाज़ को,
      पर हमे कोई बात करने का बहाना नही आता।""",

  """घर से बाहर कोलेज जाने के लिए वो नकाब मे निकली….
        सारी गली उनके पीछे निकली…
        इनकार करते थे वो हमारी मोहबत से……….
        और हमारी ही तसवीर उनकी किताब से निकली………""",
  """
      जिंदगी में कोई प्यार से प्यारा नही मिलता,
      जिंदगी में कोई प्यार से प्यारा नही मिलता,
      जो है पास आपके उसको सम्भाल कर रखना,
      क्योंकि एक बार खोकर प्यार दोबारा नही मिलता""",

  """ 
      मेरे दिल ने जब भी दुआ माँगी है, तुझे माँगा है तेरी वफ़ा माँगी है, 
      जिस मोहब्बत को देख के दुनिया को रश्क आये, तेरे प्यार करने की वो अदा माँगी है""",

  """
      बहुत सुकून मिलता है जब उनसे हमारी बात होती है,
      वो हजारो रातों में वो एक रात होती है,
      जब निगाहें उठा कर देखते हैं वो मेरी तरफ,
      तब वो ही पल मेरे लीये पूरी कायनात होती है""",

  """
      आग लगी दिल में जब वो खफ़ा हुए,
      एहसास हुआ तब, जब वो जुदा हुए,
      करके वफ़ा वो हमे कुछ दे न सके,
      लेकिन दे गये बहुत कुछ जब वो वेबफा हुए।""",

  """
      किसी न किसी को किसी पर एतवार हो जाता है,
      एक अजनबी सा चेहरा ही यार हो जाता है,
      खूबियों से ही नही होती मोहब्बत सदा,
      किसी की कमियों से भी कभी प्यार हो जाता है।""",

  """   मोहबत को जो निभाते हैं उनको मेरा सलाम है,
और जो बीच रास्ते में छोड़ जाते हैं उनको, हुमारा ये पेघाम हैं,
“वादा-ए-वफ़ा करो तो फिर खुद को फ़ना करो,
वरना खुदा के लिए किसी की ज़िंदगी ना तबाह करो”   """,

  """  वो रात दर्द और सितम की रात होगी,
जिस रात रुखसत उनकी बारात होगी,
उठ जाता हु मैं ये सोचकर नींद से अक्सर,
के एक गैर की बाहों में मेरी सारी कायनात होगी…..   """,

  """   वो रात दर्द और सितम की रात होगी,
जिस रात रुखसत उनकी बारात होगी,
उठ जाता हु मैं ये सोचकर नींद से अक्सर,
के एक गैर की बाहों में मेरी सारी कायनात होगी…..  """,

  """  दिल पे क्या गुज़री वो अनजान क्या जाने;
प्यार किसे कहते है वो नादान क्या जाने;
हवा के साथ उड़ गया घर इस परिंदे का;
कैसे बना था घोसला वो तूफान क्या जाने………   """,

  """   मंदिर में जप करता हूँ,
मस्जिद में आदाब करता हूँ,
इंसान से कहीं भगवान ना बन जाउ
इसलिए रोज़ तुझको SMS करके पाप करता हूँ  """,

  """  उगता हुआ सूरज दुआ दे आपको
खिलता हुआ फूल खुशबू दे आपको
हम तो कुछ भी देने के काबिल नहीं,
देनेवाला हज़ार खुशिया दे आपको!   """,

  """  सुहाना मौसम ओर हवा मे नमी होगी
आशुंओ की बहती नदी होगी
मिलना तो हम तब भी चाहेगे आपसे
जब आपके पास वक्त और हमारे पास सासों कि कमी होगी """,

  """  वो रिश्ता क्या जिसको निभाना पड़े,
वो प्यार क्या जिसको जाटा ना पड़े,
प्यार तो एक खामोश एहसास है,
वो एहसास क्या जिसको लफ़ज़ो मैं बताना पड़े!
   """,

  """   होठों ने जिसका ज़िकार ना किया हो
आँखें उनको पैगाम देती है
दुनिया से उनको छुपाए कैसे
हर धड़कन जो उनका नाम लेती है  """,

  """  यार ने दिल का हाल बताना छोड़ दिया,
हुमने भी गहराई मे जाना छोड़ दिया,   """,

  """ यादो में तेरी तन्हा बैठे हैं
तेरे बिना लबों की हसी गावा बैठे हैं
तेरी दुनिया में अंधेरा ना हो
इसलिए खुद का दिल जला बैःते हैं… """,
];

List motiv_shayari = [
  """सीढीयाँ उन्हें मुबारक हो,

जिन्हें छत तक जाना हो,

हमारी मंजिल तो आसमान है,

और रास्ता हमें खुद बनाना है !""",
  """जब पढ़ते-पढ़ते राते छोटी लगे,

तो समझ लेना जीत का जुनून,

सर पर सवार है !""",
  """जिसमे उबाल हो ऐसा खून चाहिये,

जीत के खातिर ऐसा जुनून चाहिए,

ये आसमान भी आएगा जमीन पर,

बस इरादों में ऐसी गूंज होनी चाहिये !""",
  """राह संघर्ष की जो चलता है,

वहीं संसार को बदलता है,

जिसने रातों में जंग जीती है,

सूर्य बनकर वही निकलता है !""",
  """चल यार एक नई शुरुआत करते है,

जो उम्मीद जमाने से की थी,

वो अब खुद से करते है !""",
  """जीतेंगे हम ये वादा करो,

कोशिश हमेशा ज्यादा करो,

किस्मत भी रूठे पर हिम्मत ना टूटे,

मजबूत इतना इरादा करो !""",
  """फर्क होता है खुदा और फकीर में,

फर्क होता है किस्मत और लकीर में,

अगर कुछ चाहो और न मिले तो समझ लेना कि,

कुछ और अच्छा लिखा है तकदीर में !""",
  """मंजिल उन्हीं को मिलती है,

जिनके सपनो में जान होती है,

पंख से कुछ नहीं होता,

हौसलों से उड़ान होती है !""",
  """बेहतर से बेहतर कि तलाश करो,

मिल जाये नदी तो समंदर कि तलाश करो,

टूट जाता है शीशा पत्थर कि चोट से,

टूट जाये पत्थर ऐसा शीशा तलाश करो !""",
  """अपने हौसले बुलंद कर,

मंजिल तेरे बहुत करीब है,

बस आगे बड़ता जा,

यह मंजिल ही तेरा नसीब है !""",
  """बिना संघर्ष के कोई महान नहीं बनता,

पत्थर पर जबतक चोट ना पड़े

तब तक पत्थर भी भगवान नहीं बनता !""",
  """जिसमे उबाल हो ऐसा खून चाहिये,

जीत के खातिर ऐसा जुनून चाहिए,

ये आसमान भी आएगा जमीन पर,

बस इरादों में ऐसी गूंज चाहिये !""",
  """जिंदगी को कामयाब बनाना चाहते हो ,
तो एक बात जरूर याद रखना
बेशक पांव फिसल जाए
पर जुबान कभी फिसलने ना देना""",
  """दुनिया आपको चिढायेगी, गिराएगी
दुनिया का काम ही यही है
पर तुम्हें इससे कोई फर्क नहीं पड़ना चाहिए""",
];

List politic_shayari = [
  """सरकार को गरीबों का ख्याल कब आता है?
चुनाव नजदीक आ जाए तो मुद्दा उछाला जाता है.""",
  """मुर्दा लोहे को औजार बनाने वाले,
अपने आँसू को हथियार बनाने वाले,
हमको बेकार समझते हैं सियासतदां
मगर हम है इस मुल्क की सरकार बनाने वाले.""",
  """मूल जानना बड़ा कठिन हैं नदियों का, वीरो का,
धनुष छोड़कर और गोत्र क्या होता हैं रणधीरो का,
पाते हैं सम्मान तपोबल से भूतल पर शूर,
“जाति-जाति” का शोर मचाते केवल कायर, क्रूर.""",
  """मैं अपनी आँख पर चशमाँ चढ़ा कर देखता हूँ
हुनर ज़ितना हैं सारा आजमा कर देखता हूँ
नजर उतना ही आता हैं की ज़ितना वो दिखाता है
मैं छोटा हू मगर हर बार कद अपना बढ़ा कर देखता हूँ""",
  """लोकतंत्र जब अपने असली रंग में आता हैं,
तो नेताओं की औकात का पता चल जाता हैं.""",
  """तुम से पहले वो जो इक शख़्स यहाँ तख़्त-नशीं था,
उस को भी अपने ख़ुदा होने पे इतना ही यक़ीं था.""",
  """राजा बोला रात है
राणी बोली रात है
मंत्री बोला रात है
संत्री बोला रात है
यह सुबह सुबह की बात है""",
  """सभी एक जैसा ही लिखते हैं, बस मतलब बदल जाते हैं,
सरकारे वैसे ही चलती हैं, बस वजीर-ए-आजम बदल जाते हैं.""",
  """मुझको तमीज की सीख देने वाले,
मैंने तेरे मुँह में कई जुबान देखा है,
और तू इतना दिखावा भी ना कर अपनी झूठी ईमानदारी का
मैंने कुछ कहने से पहले अपने गिरेबां में देखा है.""",
  """सियासत की रंगत में ना डूबो इतना,
कि वीरों की शहादत भी नजर ना आए,
जरा सा याद कर लो अपने वायदे जुबान को,
गर तुम्हे अपनी जुबां का कहा याद आए.""",
  """राजनीति में अब युवाओं को भी आना चाहिए,
देश को ईमानदारी का आईना दिखाना चाहिए.
युवा नेता शायरी""",
  """न मस्जिद को जानते हैं,
न शिवालो को जानते हैं,
जो भूखे पेट हैं,
वो सिर्फ निवालों को जानते हैं.""",
  """क्या खोया, क्या पाया जग में,
मिलते और बिछुड़ते मग में,
मुझे किसी से नही शिकायत
यद्यपि छला गया पग-पग में."""];

List rain_shayari = [
  """आज का मौसम प्यार
का मौसम होना चाहिए
बारिश तो आ जाएगी
बस बादल होना चाहिए.!!""",
  """जरा सी बारिश ने यूं ही भीगा दिया
तकिए तो गीले थे आंसुओं से
अधूरे ख्वाबों ने हमें जीना सिखा दिया.!!""",
  """अनसुनी फरियाद में
समेटे हुआ आसमान
तेरा कभी बरसे मेरे शहर
में तो दुआ कबूल तेरा..!""",
  """बारिश की बूंदे आज
मेरे चेहरे को छू गई
लगता है शायद आसमा
को जमी मिल गई..!""",
  """इश्क की बारिश में
ताउम्र हम खुद भीगते
रहे तेरी याद में कभी रोते
रहे तो कभी हंसते रहे..!""",
  """गुजारिश करता हूं कि
उससे अकेले में मुलाकात
हो ख्वाहिश ए दिल है
जब भी हो बरसात हो..!""",
  """सुहाना है बारिश का
मौसम दीवाना हूं तेरा
यार पागल है तेरे प्यार में
करता है बस तेरा इंतजार..!""",
  """जुल्फें जो उनकी खुल गई
लगता है सावन आ गया
अब कौन रोकेगा घटाओ
को घूमने से लगता है
बारिश का मौसम आ गया..!""",
  """मुझे ऐसा ही जिन्दगी का
हर एक पल चाहिए
प्यार से भरी बारिश और
संग तुम चाहिए !!""",
  """पहले बारिश होती थी
तो याद आते थे
अब जब याद आते हो
तो बारिश होती है !!""",
  """तुम्हारे चेहरे का मौसम
बड़ा सुहाना लगे
मैं थोडा लुफ्त उठा लू
अगर बुरा न लगे !!""",
  """ये बारिशों से दोस्ती
अच्छी नहीं फ़राज़
कच्चा तेरा मकान है
कुछ तो ख्याल करो !!""",
  """उनके मिलन से
महक उठी थी फ़िज़ाएँ
सौंधी खुशबू ने
बारिश की थी ना मिट्टी की !!""",
  """ए बारिश तू इतना न बरस
की वो आ न सके
और उसके आने के बाद
इतना बरस की वो जा न सके !!""",
];

List romantic_shayari = [
  """मोहब्बत करना है, फिर से करना है,
बार बार करना, हजार बार करना है,
लेकिन सिर्फ तुम से ही करना है.""",
  """मेरे दिल पर उसके प्यार का उधार रहता है,
मेरी आंखों में उसके लिये प्यार बेशूमार रहता है,
उसके बिना दिन का चैन गया और रातों की नींद गई,
बस धड़कता इस दिल में वो दिलदार रहता है.""",
  """चाहता हूँ उसका नाम लिख दूँ,
अपनी हर शायरी के साथ,
लेकिन फिर सोचता हूँ,
बहुत भोली है मेरी जान,
कहीं बदनाम न हो जाए.""",
  """तेरे प्यार में एक नशा है,
इसलिये ही ये दुनिया हमसे खफ़ा हैं,
मत करना हमसे इतनी मोहब्बत,
की तेरा दिल ही तुझसे पूंछे की तेरी धड़कन कहाँ है.""",
  """नजरो से क्यों जलाती हो आग चाहत की,
जलाकर क्यों बुझाती हो आग चाहत की,
सर्द रातों में भी कराती हो तपन का एहसास,
हवा देकर क्यों बढ़ाती हो आग चाहत की.""",
  """मोहब्बत में जुदाई भी होती है,
मोहबत मे तन्हाई भी होती हैं,
मोहब्बत में बेवफाई भी होती है,
तू ज़रा थाम कर तो देख हाथ मेरा,
तब तू जानेगी मोहब्बत में सच्चाई भी होती है.""",
  """इश्क के दरिया में डूब के पार उतर जाएंगे,
एक दूजे की बाहों में आकर सवर जाएंगे,
बसाये रखेंगे सदा एक दूजे को इस दिल में,
जो कभी बिछड़े तो हम दोनों ही मर जाएंगे.""",
  """सोचो उस पल दिल कितना मजबूर होता है,
जब कोई किसी की यादो में चूर होता है,
प्यार क्या है पता तब चलता है,
जब कोई किसी की नज़रो से दूर होता है.""",
  """मोहब्बत की शमा जला कर तो देखो,
ये दिलो की दुनिया सज़ा कर तो देखो,
तुझे हो न जाए मोहब्बत तो कहना,
ज़रा हमसे नजरे मिला कर देखो.""",
  """गिले शिकवे मेरे दिल से न लगा लेना,
जो कभी रुठू तो मुझे मना लेना,
जिंदगी का क्या पता कल हो न हो,
लेकिन जब भी मिलूँ, मुझे गले से लगा लेना.""",
  """अपनी मोहब्बत से सजाना है तुझको,
कितनी चाहत है तुझसे ये बताना है तुझको,
राहों में तेरी बिछाकर मोहब्बत अपनी,
इश्क के सफर पर ले जाना है तुझको.""",
  """तुझ पर एतवार करना हैं,
दिल जान से प्यार करना है,
मेरी ख्वाइश ज्यादा नही बस इतनी हैं,
तुझे हर लम्हे में अपना बना कर रखना है.""",
  """करीब रहूं या दूर जाऊँ मैं,
बस मेरा तो यही आलम है,
तुझे हर वक्त चाहूं मैं.""",
  """किसी मोड़ पर उसका दीदार हो जाये,
काश उसे भी मुझ पर एतवार हो जाये,
उसकी पलके झुकें और इकरार हो जाये,
काश उसे भी मुझ से प्यार हो जाये.""",];

List sad_shayari = [
  """
     सोचा था तड़पायेंगे हम उन्हें,
     किसी और का नाम लेके जलायेगें उन्हें,
     फिर सोचा मैंने उन्हें तड़पाके दर्द मुझको ही होगा,
     तो फिर भला किस तरह सताए हम उन्हें।""",

  """दिन हुआ है, तो रात भी होगी,
      मत हो उदास, उससे कभी बात भी होगी।
      वो प्यार है ही इतना प्यारा,
      ज़िंदगी रही तो मुलाकात भी होगी""",

  """वो बिछड़ के हमसे ये दूरियां कर गई,
      न जाने क्यों ये मोहब्बत अधूरी कर गई,
      अब हमे तन्हाइयां चुभती है तो क्या हुआ,
      कम से कम उसकी सारी तमन्नाएं तो पूरी हो गई।""",

  """होले होले कोई याद आया करता है,
      कोई मेरी हर साँसों को महकाया करता है,
      उस अजनबी का हर पल शुक्रिया अदा करते हैं,
      जो इस नाचीज़ को मोहब्बत सिखाया करता है।
      """,

  """अब तेरे बिना जिंदगी गुजारना मुमकिन नही है,
      अब और किसी को इस दिल में बसाना आसान नही है,
      हम तो तेरे पास कब के चले आये होते सब कुछ छोड़ कर,
      लेकिन तूने कभी हमे दिल से पुकारा ही नही है।""",

  """मंजिल भी उसकी थी, रास्ता भी उसका था,
      एक मैं ही अकेला था, बाकि सारा काफिला भी उसका था,
      एक साथ चलने की सोच भी उसकी थी,
      और बाद में रास्ता बदलने का फैसला भी उसी का था।""",

  """ वफ़ा के शीश महल में सजा लिया मैनें ,
वो एक दिल जिसे पत्थर बना लिया मैनें,
ये सोच कर कि न हो ताक में ख़ुशी कोई ,
ग़मों कि ओट में ख़ुद को छुपा लिया मैनें,
कभी न ख़त्म किया मैं ने रोशनी का मुहाज़ ,
अगर चिराग़ बुझा, दिल जला लिया मैनें,
कमाल ये है कि जो दुश्मन पे चलाना था ,
वो तीर अपने कलेजे पे खा लिया मैनें |
 """,

  """ टूटे हुए प्याले में जाम नहीं आता
इश्क़ में मरीज को आराम नहीं आता
ये बेवफा दिल तोड़ने से पहले ये सोच तो लिया होता
के टुटा हुआ दिल किसी के काम नहीं आता …….. """,

  """ वो बेवफा हमारा इम्तेहा क्या लेगी…
मिलेगी नज़रो से नज़रे तो अपनी नज़रे ज़ुका लेगी…
उसे मेरी कबर पर दीया मत जलाने देना…
वो नादान है यारो… अपना हाथ जला लेगी. """,

  """ मोहब्बत का नतीजा,
दुनिया में हमने बुरा देखा,
जिन्हे दावा था वफ़ा का,
उन्हें भी हमने बेवफा देखा. """,

  """ इंतज़ार की आरज़ू अब खो गयी है,
खामोशियो की आदत हो गयी है,
न सीकवा रहा न शिकायत किसी से,
अगर है तो एक मोहब्बत,
जो इन तन्हाइयों से हो गई है..! """,

  """ गुलसन है अगर सफ़र जिंदगी का, तो इसकी मंजिल समशान क्यों है ?
जब जुदाई है प्यार का मतलब, तो फिर प्यार वाला हैरान क्यों है ?
अगर जीना ही है मरने के लिए, तो जिंदगी ये वरदान क्यों है ?
जो कभी न मिले उससे ही लग जाता है दिल,
आखिर ये दिल इतना नादान क्यों है ? """,

  """ दवा है दर्द सीने में दवा उसकी दवा दी है
ऐ मेरी रानी तुने मुझे किसकी सजा दी है
माना की तुने मुझे छोड़ दिया सारी जिन्दगी के लिए
फिर भी खुदा से तेरे हँसने की दुआ की है """,

  """ मेरी ख्वाबिन्दा उम्मीदों को जगाया क्यों था …
दिल जलना था तो फिर तुमने दिल लगाया क्यों था ..
अगर गिरना था इस तरहा नजरोसे हमें …
तो फिर मेरे इस्सक को कलेजे से लगाया क्यों था.. """,
];

List emoji=[
  "🌹☘🌸🥀🌻🌳🎋🌹 ", "😀😍😘❤👫☺😎",
  "😊😍😘❤👫😊",
  "🌺🥀🍷🍸🍻🍟🍢🍷🍁🌺",
  "🍀🌻😓😥😰😢😭😪🍀🌻",
  "🌷☘🌮🌺🌹✌☄🏜🌼",
  "🎍 🎋 🍃 🍂 🍁 🍄 🌾 💐 🌷 🌹 🥀",
  "🌹🌹💚😍❤💖😍🌺🌹🌷",
  "s😎🤩🥳🧣🌹🌷🔥😍🤩😎",
  "🌹☘🌸🥀🌻🌳🎋🌹 ",
  "😀😍😘❤👫☺😎",
  "😊😍😘❤👫😊",
  "🌺🥀🍷🍸🍻🍟🍢🍷🍁🌺",
  "🍀🌻😓😥😰😢😭😪🍀🌻",
  "🌷☘🌮🌺🌹✌☄🏜🌼",
  "🎍 🎋 🍃 🍂 🍁 🍄 🌾 💐 🌷 🌹 🥀",
  "🌹🌹💚😍❤💖😍🌺🌹🌷",
  "s😎🤩🥳🧣🌹🌷🔥😍🤩😎",
  "🌹☘🌸🥀🌻🌳🎋🌹 ",
  "😀😍😘❤👫☺😎",
  "😊😍😘❤👫😊",
  "🌺🥀🍷🍸🍻🍟🍢🍷🍁🌺",
  "🍀🌻😓😥😰😢😭😪🍀🌻",
  "🌷☘🌮🌺🌹✌☄🏜🌼",
  "🎍 🎋 🍃 🍂 🍁 🍄 🌾 💐 🌷 🌹 🥀",
  "🌹🌹💚😍❤💖😍🌺🌹🌷",
  "s😎🤩🥳🧣🌹🌷🔥😍🤩😎",
];



