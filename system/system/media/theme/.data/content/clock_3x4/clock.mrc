PK
     ���K��?j�   �      description.xml<?xml version="1.0" encoding="utf-8" standalone="no"?>
<MIUI-Theme category="clock" size="3:4">
    <autoChange>true</autoChange>
</MIUI-Theme>
PK
     k��K�7w�'  '     manifest.xml<?xml version="1.0" encoding="utf-8"?>
<Clock version="1" frameRate="0" type="awesome" useVariableUpdater="DateTime.Minute" resDensity="440" pivotX="0.25" pivotY="0.3">
    <VariableBinders>
         <ContentProviderBinder
            uri="content://weather/weather"
            columns="city_name,weather_type,temperature"
            countName="hasweather">
             <Variable name="weather_id" type="int" column="weather_type"/>
             <Variable name="weather_temperature" type="int" column="temperature"/>
             <Variable name="weather_temperature_str" type="string" column="temperature"/>
         </ContentProviderBinder>
    </VariableBinders>
    <Var name="weather_description" expression="eval('@weather_type_'+#weather_id)" type="string"/>
    <Var name="weather_description_null" expression="eval(@weather_type_null)" type="string"/>
	<Var name="color_time" type="string" expression="ifelse(#applied_light_wallpaper,'#b3000000','#ffffffff')" />
	<Var name="color_date" type="string" expression="ifelse(#applied_light_wallpaper,'#80000000','#ffffffff')" />
	<Var name="not_null" expression="#hasweather*len(@weather_temperature_str)*not(isnull(#weather_id))" />
	
	<DateTime x="#view_width/2" y="108" align="center" size="210" color="@color_time" format="HH" fontPath="clock17-Regular.ttf" visibility="#time_format"/>
	<DateTime x="#view_width/2" y="108" align="center" size="210" color="@color_time" format="hh" fontPath="clock17-Regular.ttf" visibility="not(#time_format)"/>
	<DateTime x="#view_width/2" y="293" align="center" size="210" color="@color_time" format="mm" fontPath="clock17-Regular.ttf" />	
    
	<DateTime enableFontScale="true" x="#view_width/2" y="549" w="450" align="center" marqueeSpeed="30" format="@date_time" size="36" bold="true" color="@color_date" contentDescriptionFormat="@desc_date_format" visibility="#time_format"/>
    <DateTime enableFontScale="true" x="#view_width/2" y="549" w="450" align="center" marqueeSpeed="30" format="@date_time_12" size="36" bold="true" color="@color_date" contentDescriptionFormat="@desc_date_format_12" visibility="not(#time_format)"/>
    
	
	<Text name="weather" enableFontScale="true" x="#view_width/2" y="610" w="450" align="center" marqueeSpeed="30" textExp="@weather_description + '  ' +#weather_temperature + '°'" size="32" bold="true" color="@color_date" visibility="#not_null"/>
	    
	<Text name="weather_degree" enableFontScale="true" x="#view_width/2" y="610" w="450" align="center" textExp="@weather_description_null" size="32" bold="true" color="@color_date" visibility="not(#not_null)"/>
	
	<Button name="clock_button" x="0" y="0" width="#view_width" height="500" contentDescriptionExp="eval(@desc_time)"/>
	<Button x="0" y="520" width="#view_width" height="80" >
		<Triggers>
			<Trigger action="up">
				<IntentCommand action="android.intent.action.MAIN" package="com.android.calendar" class="com.android.calendar.AllInOneActivity"/>
			</Trigger>
		</Triggers>
	</Button>
	<Button x="0" y="610" width="#view_width" height="70" contentDescriptionExp="eval(@desc_weather)">
            <Triggers>
                <Trigger action="up">
                    <IntentCommand action="android.intent.action.MAIN" package="com.miui.weather2" class="com.miui.weather2.ActivityWeatherMain"/>
                </Trigger>
            </Triggers>
        </Button>
</Clock>
PK
     �Z/N               strings/PK
     YV�J#Z!�D  D     strings/strings_pa_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">ਸਾਫ਼</string>
    <string name="weather_type_1">ਬੱਦਲਵਾਈ ਵਾਲਾ</string>
    <string name="weather_type_2">ਧੁੰਦਲਾ</string>
    <string name="weather_type_3">ਧੁੰਦ ਵਾਲਾ</string>
    <string name="weather_type_4">ਭਾਰੀ ਤੂਫ਼ਾਨੀ ਵਰਖਾ</string>
    <string name="weather_type_5">ਤੂਫ਼ਾਨੀ ਵਰਖਾ</string>
    <string name="weather_type_6">ਬਹੁਤ ਭਾਰੀ ਵਰਖਾ</string>
    <string name="weather_type_7">ਤੂਫ਼ਾਨ</string>
    <string name="weather_type_8">ਵਾਛੜ</string>
    <string name="weather_type_9">ਭਾਰੀ ਵਰਖਾ</string>
    <string name="weather_type_10">ਵਰਖਾ</string>
    <string name="weather_type_11">ਬੂੰਦਾਬਾਂਦੀ</string>
    <string name="weather_type_12">ਗੜਿਆਂ ਦੇ ਨਾਲ ਵਰਖਾ</string>
    <string name="weather_type_13">ਬਰਫ਼ੀਲਾ ਤੂਫ਼ਾਨ</string>
    <string name="weather_type_14">ਕਿਤੇ-ਕਿਤੇ ਬਰਫ਼ਬਾਰੀ</string>
    <string name="weather_type_15">ਭਾਰੀ ਬਰਫ਼ਬਾਰੀ</string>
    <string name="weather_type_16">ਬਰਫ਼ਬਾਰੀ</string>
    <string name="weather_type_17">ਹਲਕੀ ਬਰਫ਼ਬਾਰੀ</string>
    <string name="weather_type_18">ਭਾਰੀ ਰੇਤਲੀ ਹਨੇਰੀ</string>
    <string name="weather_type_19">ਰੇਤਲੀ ਹਨੇਰੀ</string>
    <string name="weather_type_20">ਹਲਕੀ ਰੇਤਲੀ ਹਨੇਰੀ</string>
    <string name="weather_type_21">ਰੇਤਲੀ ਹਨੇਰੀ</string>
    <string name="weather_type_22">ਗੜੇ</string>
    <string name="weather_type_23">ਅਸਥਾਈ ਧੂੜ</string>
    <string name="weather_type_24">ਧੁੰਦ</string>
</resources>
PK
     OV�J�z��o  o     strings/strings_ne_NP.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">सफा</string>
    <string name="weather_type_1">बादल लागेको</string>
    <string name="weather_type_2">धमिलो</string>
    <string name="weather_type_3">तुवाँलो लागेको</string>
    <string name="weather_type_4">तेज तूफान</string>
    <string name="weather_type_5">आँधी</string>
    <string name="weather_type_6">भारी बर्षा</string>
    <string name="weather_type_7">चट्याङ्</string>
    <string name="weather_type_8">बर्सनु</string>
    <string name="weather_type_9">भारी बर्षा</string>
    <string name="weather_type_10">बर्षा</string>
    <string name="weather_type_11">हल्का बर्षा</string>
    <string name="weather_type_12">असिना सहितको बर्षा</string>
    <string name="weather_type_13">हिमपात</string>
    <string name="weather_type_14">हिमपातको खण्डहरू</string>
    <string name="weather_type_15">भारी हिमपात</string>
    <string name="weather_type_16">हिमपात</string>
    <string name="weather_type_17">हलुका हिमपात</string>
    <string name="weather_type_18">बलियो बालुवाको आँधी</string>
    <string name="weather_type_19">धुलो सहितको तूफान</string>
    <string name="weather_type_20">हलुका धुलो सहितको तूफान</string>
    <string name="weather_type_21">धुलो सहितको तूफान</string>
    <string name="weather_type_22">असिना</string>
    <string name="weather_type_23">तैरिरहेको फोहोर</string>
    <string name="weather_type_24">तुवाँलो</string>
</resources>
PK
     X�JXo�p  p     strings/strings_ur_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE، d MMMM</string>
    <string name="date_time_12">EEEE، d MMMM</string>
    <string name="desc_date_format">EEEE، d MMMM</string>
    <string name="desc_date_format_12">EEEE، d MMMM</string>
	<string name="weather_type_0">صاف</string>
    <string name="weather_type_1">ابرآلود</string>
    <string name="weather_type_2">گرد و غبار والا</string>
    <string name="weather_type_3">کہرے والا</string>
    <string name="weather_type_4">شدید طوفانی بارش</string>
    <string name="weather_type_5">طوفانی بارش</string>
    <string name="weather_type_6">بہت شدید بارش</string>
    <string name="weather_type_7">طوفان برق وباد</string>
    <string name="weather_type_8">فوارہ</string>
    <string name="weather_type_9">شدید بارش</string>
    <string name="weather_type_10">بارش</string>
    <string name="weather_type_11">پھوار</string>
    <string name="weather_type_12">اولہ باری</string>
    <string name="weather_type_13">برف کا طوفان</string>
    <string name="weather_type_14">برف باری کے دھبے</string>
    <string name="weather_type_15">بھاری برف باری</string>
    <string name="weather_type_16">برف باری</string>
    <string name="weather_type_17">ہلکی برف باری</string>
    <string name="weather_type_18">شدید ریت کا طوفان</string>
    <string name="weather_type_19">ریت کا طوفان</string>
    <string name="weather_type_20">ہلکا ریت کا طوفان</string>
    <string name="weather_type_21">ریت کا طوفان</string>
    <string name="weather_type_22">سلام کرنا</string>
    <string name="weather_type_23">اڑتی دھول</string>
    <string name="weather_type_24">گردو غبار</string>
</resources>
PK
     @V�J(�۬  �     strings/strings_ms_MY.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Cerah</string>
    <string name="weather_type_1">Mendung</string>
    <string name="weather_type_2">Jerebu</string>
    <string name="weather_type_3">Berkabus</string>
    <string name="weather_type_4">Hujan lebat yang teruk</string>
    <string name="weather_type_5">Hujan kilat</string>
    <string name="weather_type_6">Hujan yang sangat lebat</string>
    <string name="weather_type_7">Ribut petir</string>
    <string name="weather_type_8">Hujan renyai-renyai</string>
    <string name="weather_type_9">Hujan lebat</string>
    <string name="weather_type_10">Hujan</string>
    <string name="weather_type_11">Hujan renyai</string>
    <string name="weather_type_12">Hujan beku</string>
    <string name="weather_type_13">Ribut salji</string>
    <string name="weather_type_14">Tompok-tompok salji</string>
    <string name="weather_type_15">Salji yang lebat</string>
    <string name="weather_type_16">Salji</string>
    <string name="weather_type_17">Salji ringan</string>
    <string name="weather_type_18">Ribut pasir yang kuat</string>
    <string name="weather_type_19">Ribut pasir</string>
    <string name="weather_type_20">Ribut pasir yang ringan</string>
    <string name="weather_type_21">Ribut pasir</string>
    <string name="weather_type_22">Hujan batu</string>
    <string name="weather_type_23">Debu terapung</string>
    <string name="weather_type_24">Jerebu</string>
</resources>
PK
     +V�J}9��  �     strings/strings_iw_IL.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">בהיר</string>
    <string name="weather_type_1">מעונן</string>
    <string name="weather_type_2">אביך</string>
    <string name="weather_type_3">ערפילי</string>
    <string name="weather_type_4">סופת גשמים רצינית</string>
    <string name="weather_type_5">סופת גשמים</string>
    <string name="weather_type_6">גשם כבד מאוד</string>
    <string name="weather_type_7">סופת ברקים</string>
    <string name="weather_type_8">ממטר</string>
    <string name="weather_type_9">גשם כבד</string>
    <string name="weather_type_10">גשם</string>
    <string name="weather_type_11">טפטוף</string>
    <string name="weather_type_12">גשם ושלג</string>
    <string name="weather_type_13">סופת שלגים</string>
    <string name="weather_type_14">שלג חלקי</string>
    <string name="weather_type_15">שלג כבד</string>
    <string name="weather_type_16">שלג</string>
    <string name="weather_type_17">שלג קל</string>
    <string name="weather_type_18">סופת חול חזקה</string>
    <string name="weather_type_19">סופת חול</string>
    <string name="weather_type_20">סופת חול קלה</string>
    <string name="weather_type_21">סופת חול</string>
    <string name="weather_type_22">ברד</string>
    <string name="weather_type_23">אבק</string>
    <string name="weather_type_24">ארפל</string>
</resources>
PK
     +X�J��)[{  {     strings/strings_uz_UZ.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">d MMMM, EEEE</string>
    <string name="date_time_12">d MMMM, EEEE</string>
    <string name="desc_date_format">d MMMM, EEEE</string>
    <string name="desc_date_format_12">d MMMM, EEEE</string>
	<string name="weather_type_0">Tiniq</string>
    <string name="weather_type_1">Bulutli</string>
    <string name="weather_type_2">Tumanli</string>
    <string name="weather_type_3">Tumanli</string>
    <string name="weather_type_4">Qattiq yomg'ir</string>
    <string name="weather_type_5">Jala</string>
    <string name="weather_type_6">Juda kuchli yog'ingarchilik</string>
    <string name="weather_type_7">Momaqaldiroq</string>
    <string name="weather_type_8">Jala</string>
    <string name="weather_type_9">Kuchli yog'ingarchilik</string>
    <string name="weather_type_10">Yomg'ir</string>
    <string name="weather_type_11">Mayda yomg'ir</string>
    <string name="weather_type_12">Qorli yomg'ir</string>
    <string name="weather_type_13">Qor bo'roni</string>
    <string name="weather_type_14">Qorli jala</string>
    <string name="weather_type_15">Kuchli qor</string>
    <string name="weather_type_16">Qor</string>
    <string name="weather_type_17">Yengil qor</string>
    <string name="weather_type_18">Kuchli qum bo'roni</string>
    <string name="weather_type_19">Qum bo'roni</string>
    <string name="weather_type_20">Engil qum bo'roni</string>
    <string name="weather_type_21">Qum bo'roni</string>
    <string name="weather_type_22">Do'l</string>
    <string name="weather_type_23">Chang</string>
    <string name="weather_type_24">Tumanli</string>
</resources>
PK
     D��JYf�Yq  q     strings/strings_ar_EG.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE، d MMMM</string>
    <string name="date_time_12">EEEE، d MMMM</string>
    <string name="desc_date_format">EEEE، d MMMM</string>
    <string name="desc_date_format_12">EEEE، d MMMM</string>
	<string name="weather_type_0">صافٍ</string>
    <string name="weather_type_1">غائم</string>
    <string name="weather_type_2">ضبابي</string>
    <string name="weather_type_3">ضبابي</string>
    <string name="weather_type_4">عاصفة مطرية شديدة</string>
    <string name="weather_type_5">عاصفة مطرية</string>
    <string name="weather_type_6">هطول أمطار غزيرة جدا</string>
    <string name="weather_type_7">عاصفة رعدية</string>
    <string name="weather_type_8">أمطار خفيفة</string>
    <string name="weather_type_9">أمطار غزيرة</string>
    <string name="weather_type_10">مطر</string>
    <string name="weather_type_11">رذاذ</string>
    <string name="weather_type_12">مطر متجمد</string>
    <string name="weather_type_13">عاصفة ثلجية</string>
    <string name="weather_type_14">رقع من تساقط الثلوج</string>
    <string name="weather_type_15">تساقط ثلوج بغزارة</string>
    <string name="weather_type_16">تساقط ثلوج</string>
    <string name="weather_type_17">تساقط ثلوج خفيفة</string>
    <string name="weather_type_18">عاصفة رملية قوية</string>
    <string name="weather_type_19">عاصفة رملية</string>
    <string name="weather_type_20">عاصفة رملية خفيفة</string>
    <string name="weather_type_21">عاصفة رملية</string>
    <string name="weather_type_22">برد</string>
    <string name="weather_type_23">غبار في الهواء</string>
    <string name="weather_type_24">ضباب</string>
</resources>
PK
     �T�Jm�]��  �     strings/strings_es_ES.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Despejado</string>
    <string name="weather_type_1">Nublado</string>
    <string name="weather_type_2">Con bruma</string>
    <string name="weather_type_3">Con niebla</string>
    <string name="weather_type_4">Aguacero severo</string>
    <string name="weather_type_5">Aguacero</string>
    <string name="weather_type_6">Lluvia muy intensa</string>
    <string name="weather_type_7">Tormenta</string>
    <string name="weather_type_8">Chubascos</string>
    <string name="weather_type_9">Lluvia intensa</string>
    <string name="weather_type_10">Lluvia</string>
    <string name="weather_type_11">Llovizna</string>
    <string name="weather_type_12">Aguanieve</string>
    <string name="weather_type_13">Tormenta de nieve</string>
    <string name="weather_type_14">Nevada intermitente</string>
    <string name="weather_type_15">Nevada intensa</string>
    <string name="weather_type_16">Nevada</string>
    <string name="weather_type_17">Nevada ligera</string>
    <string name="weather_type_18">Tormenta de arena fuerte</string>
    <string name="weather_type_19">Tormenta de arena</string>
    <string name="weather_type_20">Tormenta de arena ligera</string>
    <string name="weather_type_21">Tormenta de arena</string>
    <string name="weather_type_22">Granizo</string>
    <string name="weather_type_23">Polvo en suspensión</string>
    <string name="weather_type_24">Neblina</string>
</resources>
PK
     X�J�oa-�  �     strings/strings_tr_TR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">d MMMM, EEEE</string>
    <string name="date_time_12">d MMMM, EEEE</string>
    <string name="desc_date_format">d MMMM, EEEE</string>
    <string name="desc_date_format_12">d MMMM, EEEE</string>
	<string name="weather_type_0">Açık</string>
    <string name="weather_type_1">Bulutlu</string>
    <string name="weather_type_2">Puslu</string>
    <string name="weather_type_3">Sisli</string>
    <string name="weather_type_4">Şiddetli sağanak</string>
    <string name="weather_type_5">Sağanak</string>
    <string name="weather_type_6">Çok yoğun sağanak</string>
    <string name="weather_type_7">Gök gürültülü sağanak</string>
    <string name="weather_type_8">Hafif yağışlı</string>
    <string name="weather_type_9">Ağır yağış</string>
    <string name="weather_type_10">Yağmurlu</string>
    <string name="weather_type_11">Çiseleme</string>
    <string name="weather_type_12">Sulu kar</string>
    <string name="weather_type_13">Kar fırtınası</string>
    <string name="weather_type_14">Kar kalıntıları</string>
    <string name="weather_type_15">Yoğun kar yağışı</string>
    <string name="weather_type_16">Kar yağışı</string>
    <string name="weather_type_17">Hafif kar yağışı</string>
    <string name="weather_type_18">Şiddetli kum fırtınası</string>
    <string name="weather_type_19">Kum fırtınası</string>
    <string name="weather_type_20">Hafif kum fırtınası</string>
    <string name="weather_type_21">Kum fırtınası</string>
    <string name="weather_type_22">Dolu</string>
    <string name="weather_type_23">Tozlu</string>
    <string name="weather_type_24">Sisli</string>
</resources>
PK
     #X�JXo�p  p     strings/strings_ur_PK.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE، d MMMM</string>
    <string name="date_time_12">EEEE، d MMMM</string>
    <string name="desc_date_format">EEEE، d MMMM</string>
    <string name="desc_date_format_12">EEEE، d MMMM</string>
	<string name="weather_type_0">صاف</string>
    <string name="weather_type_1">ابرآلود</string>
    <string name="weather_type_2">گرد و غبار والا</string>
    <string name="weather_type_3">کہرے والا</string>
    <string name="weather_type_4">شدید طوفانی بارش</string>
    <string name="weather_type_5">طوفانی بارش</string>
    <string name="weather_type_6">بہت شدید بارش</string>
    <string name="weather_type_7">طوفان برق وباد</string>
    <string name="weather_type_8">فوارہ</string>
    <string name="weather_type_9">شدید بارش</string>
    <string name="weather_type_10">بارش</string>
    <string name="weather_type_11">پھوار</string>
    <string name="weather_type_12">اولہ باری</string>
    <string name="weather_type_13">برف کا طوفان</string>
    <string name="weather_type_14">برف باری کے دھبے</string>
    <string name="weather_type_15">بھاری برف باری</string>
    <string name="weather_type_16">برف باری</string>
    <string name="weather_type_17">ہلکی برف باری</string>
    <string name="weather_type_18">شدید ریت کا طوفان</string>
    <string name="weather_type_19">ریت کا طوفان</string>
    <string name="weather_type_20">ہلکا ریت کا طوفان</string>
    <string name="weather_type_21">ریت کا طوفان</string>
    <string name="weather_type_22">سلام کرنا</string>
    <string name="weather_type_23">اڑتی دھول</string>
    <string name="weather_type_24">گردو غبار</string>
</resources>
PK
     U�J
�f  f     strings/strings_hi_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">खिली धूप</string>
    <string name="weather_type_1">बादल</string>
    <string name="weather_type_2">धुंधला</string>
    <string name="weather_type_3">कोहरा</string>
    <string name="weather_type_4">भारी वर्षा</string>
    <string name="weather_type_5">तूफ़ानी बारिश</string>
    <string name="weather_type_6">बहुत भारी वर्षा</string>
    <string name="weather_type_7">गरज के साथ तूफ़ान</string>
    <string name="weather_type_8">फुहार</string>
    <string name="weather_type_9">भारी वर्षा</string>
    <string name="weather_type_10">वर्षा</string>
    <string name="weather_type_11">बूंदा बांदी</string>
    <string name="weather_type_12">ओले के साथ वर्षा</string>
    <string name="weather_type_13">बर्फ का तूफान</string>
    <string name="weather_type_14">कहीं-कहीं पर बर्फ़बारी</string>
    <string name="weather_type_15">भारी बर्फबारी</string>
    <string name="weather_type_16">बर्फबारी</string>
    <string name="weather_type_17">हल्की बर्फबारी</string>
    <string name="weather_type_18">भीषण रेतीली आंधी</string>
    <string name="weather_type_19">रेतीली आंधी</string>
    <string name="weather_type_20">हल्की रेतीली आंधी</string>
    <string name="weather_type_21">रेतीली आंधी</string>
    <string name="weather_type_22">ओला</string>
    <string name="weather_type_23">अस्थायी धूल</string>
    <string name="weather_type_24">धुंध</string>
</resources>
PK
     �T�J!�>  >     strings/strings_fa_IR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE، d MMMM</string>
    <string name="date_time_12">EEEE، d MMMM</string>
    <string name="desc_date_format">EEEE، d MMMM</string>
    <string name="desc_date_format_12">EEEE، d MMMM</string>
	<string name="weather_type_0">صاف</string>
    <string name="weather_type_1">ابری</string>
    <string name="weather_type_2">غبارآلود</string>
    <string name="weather_type_3">مه آلود</string>
    <string name="weather_type_4">رگبار شدید</string>
    <string name="weather_type_5">رگبار</string>
    <string name="weather_type_6">بارش بسیار سنگین باران</string>
    <string name="weather_type_7">رعد و برق</string>
    <string name="weather_type_8">بارندگی</string>
    <string name="weather_type_9">بارش باران‌ سنگین</string>
    <string name="weather_type_10">بارانی</string>
    <string name="weather_type_11">نم‌نم باران</string>
    <string name="weather_type_12">برف و باران</string>
    <string name="weather_type_13">کولاک</string>
    <string name="weather_type_14">بارش پراکنده برف</string>
    <string name="weather_type_15">بارش سنگین برف</string>
    <string name="weather_type_16">بارش برف</string>
    <string name="weather_type_17">بارش سبک برف</string>
    <string name="weather_type_18">توفان شدید شن</string>
    <string name="weather_type_19">توفان شن</string>
    <string name="weather_type_20">توفان سبک شن</string>
    <string name="weather_type_21">توفان شن</string>
    <string name="weather_type_22">تگرگ</string>
    <string name="weather_type_23">گرد و غبار شناور</string>
    <string name="weather_type_24">مه</string>
</resources>
PK
     j��J
|M\�  �     strings/strings_as_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">ফৰকাল</string>
    <string name="weather_type_1">ডাৱৰীয়া</string>
    <string name="weather_type_2">ধুৱলী-কুঁৱলী</string>
    <string name="weather_type_3">কুঁৱলীময়</string>
    <string name="weather_type_4">অত্যাধিক ধুমুহা-বৰষুণ</string>
    <string name="weather_type_5">ধুমুহা-বৰষুণ</string>
    <string name="weather_type_6">প্ৰচণ্ড বৰষুণ</string>
    <string name="weather_type_7">বজ্ৰপাত-ধুমুহা</string>
    <string name="weather_type_8">বৃষ্টিপাত</string>
    <string name="weather_type_9">অত্যন্ত বৰষুণ</string>
    <string name="weather_type_10">বৰষুণ</string>
    <string name="weather_type_11">কিনকিনীয়া বৰষুণ</string>
    <string name="weather_type_12">শিলাবৃষ্টি</string>
    <string name="weather_type_13">তুষাৰ-ধুমুহা</string>
    <string name="weather_type_14">পাতলীয়া তুষাৰপাত</string>
    <string name="weather_type_15">প্ৰচণ্ড তুষাৰপাত</string>
    <string name="weather_type_16">তুষাৰপাত</string>
    <string name="weather_type_17">পাতল তুষাৰপাত</string>
    <string name="weather_type_18">শক্তিশালী বালি-ধুমুহা</string>
    <string name="weather_type_19">বালি-ধুমুহা</string>
    <string name="weather_type_20">পাতল বালি-ধুমুহা</string>
    <string name="weather_type_21">বালি-ধুমুহা</string>
    <string name="weather_type_22">শিলাবৃষ্টি</string>
    <string name="weather_type_23">উৰি ফুৰা ধূলি </string>
    <string name="weather_type_24">কুঁৱলী</string>
</resources>
PK
     (V�J�x�  �     strings/strings_it_IT.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Sereno</string>
    <string name="weather_type_1">Nuvoloso</string>
    <string name="weather_type_2">Foschia</string>
    <string name="weather_type_3">Nebbia</string>
    <string name="weather_type_4">Forte pioggia</string>
    <string name="weather_type_5">Precipitazioni</string>
    <string name="weather_type_6">Precipitazioni molto forti</string>
    <string name="weather_type_7">Temporale</string>
    <string name="weather_type_8">Acquazzoni</string>
    <string name="weather_type_9">Forti piogge</string>
    <string name="weather_type_10">Pioggia</string>
    <string name="weather_type_11">Pioggerella</string>
    <string name="weather_type_12">Nevischio</string>
    <string name="weather_type_13">Bufera di neve</string>
    <string name="weather_type_14">Neve a tratti</string>
    <string name="weather_type_15">Forti nevicate</string>
    <string name="weather_type_16">Nevicate</string>
    <string name="weather_type_17">Nevicate leggere</string>
    <string name="weather_type_18">Forte tempesta di sabbia</string>
    <string name="weather_type_19">Tempesta di sabbia</string>
    <string name="weather_type_20">Leggera tempesta di sabbia</string>
    <string name="weather_type_21">Tempesta di sabbia</string>
    <string name="weather_type_22">Grandine</string>
    <string name="weather_type_23">Polvere sospesa</string>
    <string name="weather_type_24">Foschia</string>
</resources>
PK
     :V�J�k%  %     strings/strings_mr_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">निरभ्र</string>
    <string name="weather_type_1">ढगाळ</string>
    <string name="weather_type_2">धुके</string>
    <string name="weather_type_3">धुकट</string>
    <string name="weather_type_4">जोराचा वादळी पाऊस</string>
    <string name="weather_type_5">वादळी पाऊस</string>
    <string name="weather_type_6">मुसळधार पाऊस</string>
    <string name="weather_type_7">पाऊस</string>
    <string name="weather_type_8">सरी</string>
    <string name="weather_type_9">जोराचा पाऊस</string>
    <string name="weather_type_10">पाऊस</string>
    <string name="weather_type_11">रिमझिम पाऊस</string>
    <string name="weather_type_12">गारांचा पाऊस</string>
    <string name="weather_type_13">हिमवादळ</string>
    <string name="weather_type_14">बर्फवृष्टीचे पट्टे</string>
    <string name="weather_type_15">जोराची बर्फवृष्टी</string>
    <string name="weather_type_16">बर्फवृष्टी</string>
    <string name="weather_type_17">हलकी बर्फवृष्टी</string>
    <string name="weather_type_18">वाळूचे जोराचे वादळ</string>
    <string name="weather_type_19">वाळूचे वादळ</string>
    <string name="weather_type_20">वाळूचे हलके वादळ</string>
    <string name="weather_type_21">वाळूचे वादळ</string>
    <string name="weather_type_22">गारा</string>
    <string name="weather_type_23">धुराळा</string>
    <string name="weather_type_24">धुके</string>
</resources>
PK
     HW�Jb��z  z     strings/strings_lt_LT.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE, MMMM d</string>
    <string name="date_time_12">EEEE, MMMM d</string>
    <string name="desc_date_format">EEEE, MMMM d</string>
    <string name="desc_date_format_12">EEEE, MMMM d</string>
	<string name="weather_type_0">Giedra</string>
    <string name="weather_type_1">Debesuota</string>
    <string name="weather_type_2">Miglota</string>
    <string name="weather_type_3">Rūkas</string>
    <string name="weather_type_4">Trumpalaikis lietus</string>
    <string name="weather_type_5">Lietus</string>
    <string name="weather_type_6">Labai stiprus lietus</string>
    <string name="weather_type_7">Audra</string>
    <string name="weather_type_8">Liūtis</string>
    <string name="weather_type_9">Stiprus lietus</string>
    <string name="weather_type_10">Lietus</string>
    <string name="weather_type_11">Dulksna</string>
    <string name="weather_type_12">Kruša</string>
    <string name="weather_type_13">Pūga</string>
    <string name="weather_type_14">Vietomis sninga</string>
    <string name="weather_type_15">Stipriai sninga</string>
    <string name="weather_type_16">Sninga</string>
    <string name="weather_type_17">Lengvai sninga</string>
    <string name="weather_type_18">Smarki smėlio audra</string>
    <string name="weather_type_19">Smėlio audra</string>
    <string name="weather_type_20">Silpna smėlio audra</string>
    <string name="weather_type_21">Smėlio audra</string>
    <string name="weather_type_22">Kruša</string>
    <string name="weather_type_23">Dulkėta</string>
    <string name="weather_type_24">Migla</string>
</resources>
PK
     yJM��C�h  h     strings/strings_zh_HK.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">M月d日 E</string>
    <string name="date_time_12">M月d日 Eaa</string>
    <string name="desc_date_format">M月d日 E</string>
    <string name="desc_date_format_12">M月d日 Eaa</string>
    <string name="desc_time">ifelse(eq(#time_format,0),#hour12,eq(#time_format,1),#hour24,#hour24)+'点'+ifelse(gt(#minute,0)*le(#minute,9),0,'')+ifelse(#minute,#minute+'分','整')+', 双击进入时钟App'</string>
	<string name="weather_type_null">'點擊獲取天氣數據'</string>
	<string name="weather_type_0">晴</string>
    <string name="weather_type_1">多雲</string>
    <string name="weather_type_2">陰</string>
    <string name="weather_type_3">霧</string>
    <string name="weather_type_4">特大暴雨</string>
    <string name="weather_type_5">大暴雨</string>
    <string name="weather_type_6">暴雨</string>
    <string name="weather_type_7">雷陣雨</string>
    <string name="weather_type_8">陣雨</string>
    <string name="weather_type_9">大雨</string>
    <string name="weather_type_10">中雨</string>
    <string name="weather_type_11">小雨</string>
    <string name="weather_type_12">雨夾雪</string>
    <string name="weather_type_13">暴雪</string>
    <string name="weather_type_14">陣雪</string>
    <string name="weather_type_15">大雪</string>
    <string name="weather_type_16">中雪</string>
    <string name="weather_type_17">小雪</string>
    <string name="weather_type_18">強沙塵暴</string>
    <string name="weather_type_19">沙塵暴</string>
    <string name="weather_type_20">沙塵</string>
    <string name="weather_type_21">揚沙</string>
    <string name="weather_type_22">冰雹</string>
    <string name="weather_type_23">浮塵</string>
    <string name="weather_type_24">霾</string>
    <string name="weather_type_25">凍雨</string>
</resources>
PK
     7V�J���	  �	     strings/strings_ml_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">തെളിഞ്ഞത്</string>
    <string name="weather_type_1">മേഘാവൃതമായ</string>
    <string name="weather_type_2">തെളിച്ചമില്ലാത്ത</string>
    <string name="weather_type_3">മൂടിക്കെട്ടിയ</string>
    <string name="weather_type_4">കൊടുങ്കാറ്റോടുകൂടിയ കടുത്ത പേമാരി</string>
    <string name="weather_type_5">കാറ്റോടു കൂടിയ മഴ</string>
    <string name="weather_type_6">വളരെ കടുത്ത മഴ</string>
    <string name="weather_type_7">ഇടിയും മിന്നലുമുള്ള കൊടുംങ്കാറ്റ്‌</string>
    <string name="weather_type_8">ചാറ്റല്‍മഴ</string>
    <string name="weather_type_9">കനത്ത മഴ</string>
    <string name="weather_type_10">മഴ</string>
    <string name="weather_type_11">ചാറ്റൽമഴ</string>
    <string name="weather_type_12">ആലിപ്പഴം പൊഴിയൽ</string>
    <string name="weather_type_13">കടുത്ത ഹിമപാതം</string>
    <string name="weather_type_14">അങ്ങ് ഇങ്ങ് മഞ്ഞുവീഴ്ച</string>
    <string name="weather_type_15">കടുത്ത മഞ്ഞുവീഴ്ച്ച</string>
    <string name="weather_type_16">മഞ്ഞുവീഴ്ച്ച</string>
    <string name="weather_type_17">ചെറിയ മഞ്ഞുവീഴ്ച്ച</string>
    <string name="weather_type_18">കടുത്ത പൊടിക്കാറ്റ്</string>
    <string name="weather_type_19">പൊടിക്കാറ്റ്</string>
    <string name="weather_type_20">ചെറിയ പൊടിക്കാറ്റ്</string>
    <string name="weather_type_21">പൊടിക്കാറ്റ്</string>
    <string name="weather_type_22">ആലിപ്പഴം</string>
    <string name="weather_type_23">പറന്നുനടക്കുന്ന പൊടിക്കാറ്റ്</string>
    <string name="weather_type_24">മങ്ങിയ</string>
</resources>
PK
     ���Ju��;o  o     strings/strings_bg_BG.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Ясно</string>
    <string name="weather_type_1">Облачно</string>
    <string name="weather_type_2">Лека мъгла</string>
    <string name="weather_type_3">Мъгливо</string>
    <string name="weather_type_4">Силна буря</string>
    <string name="weather_type_5">Буря</string>
    <string name="weather_type_6">Силни валежи</string>
    <string name="weather_type_7">Гръмотевична буря</string>
    <string name="weather_type_8">Превалявания</string>
    <string name="weather_type_9">Валежи</string>
    <string name="weather_type_10">Дъждовно</string>
    <string name="weather_type_11">Ръми</string>
    <string name="weather_type_12">Суграшица</string>
    <string name="weather_type_13">Снежна буря</string>
    <string name="weather_type_14">Сняг на парцали</string>
    <string name="weather_type_15">Силен снеговалеж</string>
    <string name="weather_type_16">Снеговалеж</string>
    <string name="weather_type_17">Слаб снеговалеж</string>
    <string name="weather_type_18">Силна пясъчна буря</string>
    <string name="weather_type_19">Пясъчна буря</string>
    <string name="weather_type_20">Лека пясъчна буря</string>
    <string name="weather_type_21">Прашно</string>
    <string name="weather_type_22">Градушка</string>
    <string name="weather_type_23">Силно запрашено</string>
    <string name="weather_type_24">Мрачно</string>
</resources>
PK
     X�JD ��	  	     strings/strings_th_TH.xml<?xml version="1.0" encoding="utf-8"?>
<resources> 
    <string name="date_time">EEEE d MMMM</string>
    <string name="date_time_12">EEEE d MMMM</string>
    <string name="desc_date_format">EEEE d MMMM</string>
    <string name="desc_date_format_12">EEEE d MMMM</string>
    <string name="desc_time">'เวลาปัจจุบัน' + #hour12+' '+ifelse(#minute,#minute,'oclock')+', แตะสองครั้งติดกันเพื่อเข้าสู่แอปนาฬิกา'</string>
	<string name="weather_type_0">แจ่มใส</string>
    <string name="weather_type_1">เมฆมาก</string>
    <string name="weather_type_2">หมอกหนา</string>
    <string name="weather_type_3">มีหมอกลง</string>
    <string name="weather_type_4">ฝนฟ้าคะนองรุนแรง</string>
    <string name="weather_type_5">ฝนฟ้าคะนอง</string>
    <string name="weather_type_6">ฝนตกหนักมาก</string>
    <string name="weather_type_7">ฟ้าคะนอง</string>
    <string name="weather_type_8">ฝนตก</string>
    <string name="weather_type_9">ฝนตกหนัก</string>
    <string name="weather_type_10">ฝนตก</string>
    <string name="weather_type_11">ฝนละออง</string>
    <string name="weather_type_12">ลูกเห็บตก</string>
    <string name="weather_type_13">พายุหิมะ</string>
    <string name="weather_type_14">หิมะตกหนา</string>
    <string name="weather_type_15">หิมะตกหนัก</string>
    <string name="weather_type_16">หิมะตก</string>
    <string name="weather_type_17">หิมะตกเล็กน้อย</string>
    <string name="weather_type_18">พายุทรายรุนแรง</string>
    <string name="weather_type_19">พายุทราย</string>
    <string name="weather_type_20">พายุทรายเล็กน้อย</string>
    <string name="weather_type_21">พายุทราย</string>
    <string name="weather_type_22">ลูกเห็บตก</string>
    <string name="weather_type_23">มีฝุ่นละออง</string>
    <string name="weather_type_24">เมฆหมอก</string>
</resources>
PK
     ���J�y��  �     strings/strings_bn_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">আকাশ পরিষ্কার</string>
    <string name="weather_type_1">মেঘলা</string>
    <string name="weather_type_2">কুয়াশাচ্ছন্ন</string>
    <string name="weather_type_3">কুয়াশাচ্ছন্ন</string>
    <string name="weather_type_4">মারাত্মক ঝড়বৃষ্টি</string>
    <string name="weather_type_5">ঝড়বৃষ্টি</string>
    <string name="weather_type_6">প্রচন্ড বৃষ্টিপাত</string>
    <string name="weather_type_7">বজ্রবিদ্যুতসহ ঝড়</string>
    <string name="weather_type_8">বর্ষণ</string>
    <string name="weather_type_9">প্রচন্ড বৃষ্টিপাত</string>
    <string name="weather_type_10">বৃষ্টি</string>
    <string name="weather_type_11">গুঁড়ি গুঁড়ি বৃষ্টি</string>
    <string name="weather_type_12">শিলাবৃষ্টি</string>
    <string name="weather_type_13">তুষারঝড়</string>
    <string name="weather_type_14">হালকা তুষারপাত</string>
    <string name="weather_type_15">প্রচন্ড তুষারপাত</string>
    <string name="weather_type_16">তুষারপাত</string>
    <string name="weather_type_17">হালকা তুষারপাত</string>
    <string name="weather_type_18">প্রচন্ড বালুঝড়</string>
    <string name="weather_type_19">বালুঝড়</string>
    <string name="weather_type_20">হালকা বালুঝড়</string>
    <string name="weather_type_21">বালুঝড়</string>
    <string name="weather_type_22">শিলাবৃষ্টি</string>
    <string name="weather_type_23">ভাসমান ধুলো</string>
    <string name="weather_type_24">কুয়াশা</string>
</resources>
PK
     cV�J� ���  �     strings/strings_ro_RO.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Senin</string>
    <string name="weather_type_1">Noros</string>
    <string name="weather_type_2">Ceaţă</string>
    <string name="weather_type_3">Ceţos</string>
    <string name="weather_type_4">Furtună puternică</string>
    <string name="weather_type_5">Furtună</string>
    <string name="weather_type_6">Furtună foarte puternică</string>
    <string name="weather_type_7">Tunete și fulgere</string>
    <string name="weather_type_8">Averse</string>
    <string name="weather_type_9">Ploaie puternică</string>
    <string name="weather_type_10">Ploaie</string>
    <string name="weather_type_11">Burniță</string>
    <string name="weather_type_12">Lapoviță</string>
    <string name="weather_type_13">Furtună de zăpadă</string>
    <string name="weather_type_14">Ploi cu zăpadă</string>
    <string name="weather_type_15">Ninsoare puternică</string>
    <string name="weather_type_16">Ninsoare</string>
    <string name="weather_type_17">Ninsoare slabă</string>
    <string name="weather_type_18">Furtună de nisip puternică</string>
    <string name="weather_type_19">Furtună de nisip</string>
    <string name="weather_type_20">Furtună ușoară de nisip</string>
    <string name="weather_type_21">Furtună de nisip</string>
    <string name="weather_type_22">Grindină</string>
    <string name="weather_type_23">Pete de ceață</string>
    <string name="weather_type_24">Ceaţă</string>
</resources>
PK
     `U�J�w!�  �     strings/strings_in_ID.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Cerah</string>
    <string name="weather_type_1">Berawan</string>
    <string name="weather_type_2">Berkabut</string>
    <string name="weather_type_3">Berkabut</string>
    <string name="weather_type_4">Hujan badai parah</string>
    <string name="weather_type_5">Hujan badai</string>
    <string name="weather_type_6">Hujan sangat deras</string>
    <string name="weather_type_7">Badai petir</string>
    <string name="weather_type_8">Hujan lebat</string>
    <string name="weather_type_9">Hujan deras</string>
    <string name="weather_type_10">Hujan</string>
    <string name="weather_type_11">Gerimis</string>
    <string name="weather_type_12">Hujan es salju</string>
    <string name="weather_type_13">Badai salju</string>
    <string name="weather_type_14">Gerimis salju</string>
    <string name="weather_type_15">Hujan salju deras</string>
    <string name="weather_type_16">Hujan salju</string>
    <string name="weather_type_17">Hujan salju ringan</string>
    <string name="weather_type_18">Badai pasir kuat</string>
    <string name="weather_type_19">Badai pasir</string>
    <string name="weather_type_20">Badai pasir ringan</string>
    <string name="weather_type_21">Badai pasir</string>
    <string name="weather_type_22">Hujan es</string>
    <string name="weather_type_23">Berdebu</string>
    <string name="weather_type_24">Kabut</string>
</resources>
PK
     �S�JM�  �     strings/strings_cs_CZ.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE, d. MMMM</string>
    <string name="date_time_12">EEEE, d. MMMM</string>
    <string name="desc_date_format">EEEE, d. MMMM</string>
    <string name="desc_date_format_12">EEEE, d. MMMM</string>
	<string name="weather_type_0">Jasno</string>
    <string name="weather_type_1">Oblačno</string>
    <string name="weather_type_2">Zataženo</string>
    <string name="weather_type_3">Mlhavo</string>
    <string name="weather_type_4">Silné bouřky</string>
    <string name="weather_type_5">Bouřka</string>
    <string name="weather_type_6">Silný déšť</string>
    <string name="weather_type_7">Bouřky s blesky</string>
    <string name="weather_type_8">Přeháňky</string>
    <string name="weather_type_9">Silný déšť</string>
    <string name="weather_type_10">Déšť</string>
    <string name="weather_type_11">Mrholení</string>
    <string name="weather_type_12">Déšť se sněhem</string>
    <string name="weather_type_13">Sněhová bouře</string>
    <string name="weather_type_14">Sněhové pásy</string>
    <string name="weather_type_15">Silné sněžení</string>
    <string name="weather_type_16">Sněžení</string>
    <string name="weather_type_17">Slabé sněžení</string>
    <string name="weather_type_18">Silná písečná bouře</string>
    <string name="weather_type_19">Písečná bouře</string>
    <string name="weather_type_20">Lehká písečná bouře</string>
    <string name="weather_type_21">Písečná bouře</string>
    <string name="weather_type_22">Krupobití</string>
    <string name="weather_type_23">Prach</string>
    <string name="weather_type_24">Opar</string>
</resources>PK
     RU�J�P�  �     strings/strings_hu_HU.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">MMMM d., EEEE</string>
    <string name="date_time_12">MMMM d., EEEE</string>
    <string name="desc_date_format">MMMM d., EEEE</string>
    <string name="desc_date_format_12">MMMM d., EEEE</string>
	<string name="weather_type_0">Tiszta</string>
    <string name="weather_type_1">Felhős</string>
    <string name="weather_type_2">Enyhén ködös</string>
    <string name="weather_type_3">Ködös</string>
    <string name="weather_type_4">Erős felhőszakadás</string>
    <string name="weather_type_5">Felhőszakadás</string>
    <string name="weather_type_6">Nagyon erős csapadék</string>
    <string name="weather_type_7">Zivatar</string>
    <string name="weather_type_8">Zápor</string>
    <string name="weather_type_9">Erős csapadék</string>
    <string name="weather_type_10">Eső</string>
    <string name="weather_type_11">Szitálás</string>
    <string name="weather_type_12">Havas eső</string>
    <string name="weather_type_13">Hóvihar</string>
    <string name="weather_type_14">Foltokban hóesés</string>
    <string name="weather_type_15">Sűrű havazás</string>
    <string name="weather_type_16">Havazás</string>
    <string name="weather_type_17">Enyhe havazás</string>
    <string name="weather_type_18">Erős homokvihar</string>
    <string name="weather_type_19">Homokvihar</string>
    <string name="weather_type_20">Enyhe homokvihar</string>
    <string name="weather_type_21">Homokvihar</string>
    <string name="weather_type_22">Jégeső</string>
    <string name="weather_type_23">Szálló por</string>
    <string name="weather_type_24">Enyhe köd</string>
</resources>
PK
     UV�J���Z  Z     strings/strings_or_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">ସଫା</string>
    <string name="weather_type_1">ମେଘୁଆ</string>
    <string name="weather_type_2">ହେଜି</string>
    <string name="weather_type_3">ଘନ କୁହୁଡି</string>
    <string name="weather_type_4">ଭାରି ବର୍ଷା</string>
    <string name="weather_type_5">ତୁଫାନୀ ବର୍ଷା</string>
    <string name="weather_type_6">ବହୁତ ଭାରି ବର୍ଷା</string>
    <string name="weather_type_7">ଝଡବର୍ଷା</string>
    <string name="weather_type_8">ତୁଷାରପାତ</string>
    <string name="weather_type_9">ଭାରି ବର୍ଷା</string>
    <string name="weather_type_10">ବର୍ଷା</string>
    <string name="weather_type_11">ଡ୍ରିଜିଲ୍‍</string>
    <string name="weather_type_12">ସ୍ଲିଟ୍‍</string>
    <string name="weather_type_13">ବରଫର ଝଡ</string>
    <string name="weather_type_14">କେତେକ ସ୍ଥାନରେ ବରଫ ପଡିବା</string>
    <string name="weather_type_15">ଅଧିକ ବରଫ ପଡିବା</string>
    <string name="weather_type_16">ବରଫ ପଡିବା</string>
    <string name="weather_type_17">କମ୍‌ ବରଫ ପଡିବା</string>
    <string name="weather_type_18">ଭାରି ଧୂଳିଝଡ</string>
    <string name="weather_type_19">ସ୍ୟାଣ୍ଡଷ୍ଟ୍ରମ୍‍</string>
    <string name="weather_type_20">ଲାଇଟ୍‍ ସ୍ୟାଣ୍ଡଷ୍ଟ୍ରମ୍‍</string>
    <string name="weather_type_21">ସ୍ୟାଣ୍ଡଷ୍ଟ୍ରମ୍‍</string>
    <string name="weather_type_22">ହେଲ୍‌</string>
    <string name="weather_type_23">ଫ୍ଲୋଟିଂ ଡଷ୍ଟ୍‍</string>
    <string name="weather_type_24">ହେଜ୍‍</string>
</resources>
PK
     @T�J��m*  *     strings/strings_en_US.xml<?xml version="1.0" encoding="utf-8"?>
<resources> 
    <string name="date_time">EEE, MMMM dd</string>
    <string name="date_time_12">EEE, MMMM dd</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
    <string name="desc_time">'current time' + #hour12+' '+ifelse(#minute,#minute,'oclock')+', double tap to enter clock app'</string>
	<string name="weather_type_null">'No data'</string>
	<string name="weather_type_0">Clear</string>
    <string name="weather_type_1">Cloudy</string>
    <string name="weather_type_2">Hazy</string>
    <string name="weather_type_3">Foggy</string>
    <string name="weather_type_4">Severe rainstorm</string>
    <string name="weather_type_5">Rainstorm</string>
    <string name="weather_type_6">Very heavy rainfall</string>
    <string name="weather_type_7">Thunderstorm</string>
    <string name="weather_type_8">Shower</string>
    <string name="weather_type_9">Heavy rainfall</string>
    <string name="weather_type_10">Rain</string>
    <string name="weather_type_11">Drizzle</string>
    <string name="weather_type_12">Sleet</string>
    <string name="weather_type_13">Snowstorm</string>
    <string name="weather_type_14">Patches of snowfall</string>
    <string name="weather_type_15">Heavy snowfall</string>
    <string name="weather_type_16">Snowfall</string>
    <string name="weather_type_17">Light snowfall</string>
    <string name="weather_type_18">Strong sandstorm</string>
    <string name="weather_type_19">Sandstorm</string>
    <string name="weather_type_20">Light sandstorm</string>
    <string name="weather_type_21">Sandstorm</string>
    <string name="weather_type_22">Hail</string>
    <string name="weather_type_23">Floating Dust</string>
    <string name="weather_type_24">Haze</string>
</resources>
PK
     fV�J*юc  c     strings/strings_ru_RU.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Ясно</string>
    <string name="weather_type_1">Облачно</string>
    <string name="weather_type_2">Пасмурно</string>
    <string name="weather_type_3">Туман</string>
    <string name="weather_type_4">Сильный дождь</string>
    <string name="weather_type_5">Проливной дождь</string>
    <string name="weather_type_6">Ливень с ураганом</string>
    <string name="weather_type_7">Гроза</string>
    <string name="weather_type_8">Ливни</string>
    <string name="weather_type_9">Сильный дождь</string>
    <string name="weather_type_10">Дождь</string>
    <string name="weather_type_11">Мелкий дождь</string>
    <string name="weather_type_12">Мокрый снег</string>
    <string name="weather_type_13">Метель</string>
    <string name="weather_type_14">Ливни со снегом</string>
    <string name="weather_type_15">Сильный снегопад</string>
    <string name="weather_type_16">Снег</string>
    <string name="weather_type_17">Небольшой снег</string>
    <string name="weather_type_18">Сильная пыльная буря</string>
    <string name="weather_type_19">Пыльная буря</string>
    <string name="weather_type_20">Небольшая пыльная буря</string>
    <string name="weather_type_21">Пыльная буря</string>
    <string name="weather_type_22">Град</string>
    <string name="weather_type_23">Пыль</string>
    <string name="weather_type_24">Дымка</string>
</resources>
PK
     yJM��C�h  h     strings/strings_zh_TW.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">M月d日 E</string>
    <string name="date_time_12">M月d日 Eaa</string>
    <string name="desc_date_format">M月d日 E</string>
    <string name="desc_date_format_12">M月d日 Eaa</string>
    <string name="desc_time">ifelse(eq(#time_format,0),#hour12,eq(#time_format,1),#hour24,#hour24)+'点'+ifelse(gt(#minute,0)*le(#minute,9),0,'')+ifelse(#minute,#minute+'分','整')+', 双击进入时钟App'</string>
	<string name="weather_type_null">'點擊獲取天氣數據'</string>
	<string name="weather_type_0">晴</string>
    <string name="weather_type_1">多雲</string>
    <string name="weather_type_2">陰</string>
    <string name="weather_type_3">霧</string>
    <string name="weather_type_4">特大暴雨</string>
    <string name="weather_type_5">大暴雨</string>
    <string name="weather_type_6">暴雨</string>
    <string name="weather_type_7">雷陣雨</string>
    <string name="weather_type_8">陣雨</string>
    <string name="weather_type_9">大雨</string>
    <string name="weather_type_10">中雨</string>
    <string name="weather_type_11">小雨</string>
    <string name="weather_type_12">雨夾雪</string>
    <string name="weather_type_13">暴雪</string>
    <string name="weather_type_14">陣雪</string>
    <string name="weather_type_15">大雪</string>
    <string name="weather_type_16">中雪</string>
    <string name="weather_type_17">小雪</string>
    <string name="weather_type_18">強沙塵暴</string>
    <string name="weather_type_19">沙塵暴</string>
    <string name="weather_type_20">沙塵</string>
    <string name="weather_type_21">揚沙</string>
    <string name="weather_type_22">冰雹</string>
    <string name="weather_type_23">浮塵</string>
    <string name="weather_type_24">霾</string>
    <string name="weather_type_25">凍雨</string>
</resources>
PK
     /V�JUGYЙ  �     strings/strings_kn_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">ನಿಚ್ಛಳ</string>
    <string name="weather_type_1">ಮೋಡ ಕವಿದಿದೆ</string>
    <string name="weather_type_2">ಮಬ್ಬು ಕವಿದಿದೆ</string>
    <string name="weather_type_3">ಮಂಜು ಮುಸುಕಿದೆ</string>
    <string name="weather_type_4">ತೀವ್ರ ಮಳೆ</string>
    <string name="weather_type_5">ಮಳೆಮಾರುತ</string>
    <string name="weather_type_6">ಭಾರೀ ಮಳೆ</string>
    <string name="weather_type_7">ಬಿರುಗಾಳಿ ಬೀಸುತ್ತಿದೆ</string>
    <string name="weather_type_8">ತುಂತುರು ಮಳೆ</string>
    <string name="weather_type_9">ಭಾರೀ ಮಳೆ</string>
    <string name="weather_type_10">ಮಳೆ ಬರುತ್ತಿದೆ</string>
    <string name="weather_type_11">ತುಂತುರು ಮಳೆ</string>
    <string name="weather_type_12">ಆಲಿಕಲ್ಲು ಮಳೆ</string>
    <string name="weather_type_13">ಹಿಮಮಳೆ</string>
    <string name="weather_type_14">ಅಲ್ಲಲ್ಲಿ ಹಿಮಮಳೆ</string>
    <string name="weather_type_15">ಭಾರೀ ಹಿಮಪಾತ</string>
    <string name="weather_type_16">ಹಿಮಪಾತ</string>
    <string name="weather_type_17">ಲಘು ಹಿಮಪಾತ</string>
    <string name="weather_type_18">ಬಲವಾದ ಮರುಳುಗಾಳಿ</string>
    <string name="weather_type_19">ಮರುಳುಗಾಳಿ ಬೀಸುತ್ತಿದೆ</string>
    <string name="weather_type_20">ಲಘು ಮರುಳುಗಾಳಿ</string>
    <string name="weather_type_21">ಮರುಳುಗಾಳಿ</string>
    <string name="weather_type_22">ಆಲಿಕಲ್ಲು</string>
    <string name="weather_type_23">ಧೂಳು</string>
    <string name="weather_type_24">ಮಬ್ಬುಮುಸುಕಿನ ವಾತಾವರಣ</string>
</resources>
PK
     	U�J���U  U     strings/strings_gu_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">સાફ</string>
    <string name="weather_type_1">વાદળછાયું</string>
    <string name="weather_type_2">અસ્પષ્ટ</string>
    <string name="weather_type_3">ધુમ્મસભર્યું</string>
    <string name="weather_type_4">અતિથી અતિ ભારે વાવાઝોડું</string>
    <string name="weather_type_5">વર્ષા સાથેનું વાવાઝોડું</string>
    <string name="weather_type_6">બહુ ભારે વરસાદ</string>
    <string name="weather_type_7">વાવાઝોડું</string>
    <string name="weather_type_8">નાનું ઝાપટું</string>
    <string name="weather_type_9">ભારે વરસાદ</string>
    <string name="weather_type_10">વરસાદ</string>
    <string name="weather_type_11">ઝરમર વરસાદ</string>
    <string name="weather_type_12">કરા સાથે વરસાદ</string>
    <string name="weather_type_13">બર્ફનો તોફાન</string>
    <string name="weather_type_14">હિમવર્ષાના પેચ</string>
    <string name="weather_type_15">ભારે હિમવર્ષા</string>
    <string name="weather_type_16">હિમવર્ષા</string>
    <string name="weather_type_17">હળવી હિમવર્ષા</string>
    <string name="weather_type_18">જોરદાર આંધી</string>
    <string name="weather_type_19">આંધી</string>
    <string name="weather_type_20">હળવી આંધી</string>
    <string name="weather_type_21">આંધી</string>
    <string name="weather_type_22">કરા</string>
    <string name="weather_type_23">ઉડતી ધૂળ</string>
    <string name="weather_type_24">ધુમ્મસ</string>
</resources>
PK
     ���J�y��  �     strings/strings_bn_BD.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">আকাশ পরিষ্কার</string>
    <string name="weather_type_1">মেঘলা</string>
    <string name="weather_type_2">কুয়াশাচ্ছন্ন</string>
    <string name="weather_type_3">কুয়াশাচ্ছন্ন</string>
    <string name="weather_type_4">মারাত্মক ঝড়বৃষ্টি</string>
    <string name="weather_type_5">ঝড়বৃষ্টি</string>
    <string name="weather_type_6">প্রচন্ড বৃষ্টিপাত</string>
    <string name="weather_type_7">বজ্রবিদ্যুতসহ ঝড়</string>
    <string name="weather_type_8">বর্ষণ</string>
    <string name="weather_type_9">প্রচন্ড বৃষ্টিপাত</string>
    <string name="weather_type_10">বৃষ্টি</string>
    <string name="weather_type_11">গুঁড়ি গুঁড়ি বৃষ্টি</string>
    <string name="weather_type_12">শিলাবৃষ্টি</string>
    <string name="weather_type_13">তুষারঝড়</string>
    <string name="weather_type_14">হালকা তুষারপাত</string>
    <string name="weather_type_15">প্রচন্ড তুষারপাত</string>
    <string name="weather_type_16">তুষারপাত</string>
    <string name="weather_type_17">হালকা তুষারপাত</string>
    <string name="weather_type_18">প্রচন্ড বালুঝড়</string>
    <string name="weather_type_19">বালুঝড়</string>
    <string name="weather_type_20">হালকা বালুঝড়</string>
    <string name="weather_type_21">বালুঝড়</string>
    <string name="weather_type_22">শিলাবৃষ্টি</string>
    <string name="weather_type_23">ভাসমান ধুলো</string>
    <string name="weather_type_24">কুয়াশা</string>
</resources>
PK
     yW�J[��  �     strings/strings_sl_SI.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE, d. MMMM</string>
    <string name="date_time_12">EEEE, d. MMMM</string>
    <string name="desc_date_format">EEEE, d. MMMM</string>
    <string name="desc_date_format_12">EEEE, d. MMMM</string>
	<string name="weather_type_0">Vedro</string>
    <string name="weather_type_1">Oblačno</string>
    <string name="weather_type_2">Megleno</string>
    <string name="weather_type_3">Megla</string>
    <string name="weather_type_4">Močan dež</string>
    <string name="weather_type_5">Nevihta z dežjem</string>
    <string name="weather_type_6">Zelo huda ploha</string>
    <string name="weather_type_7">Nevihta</string>
    <string name="weather_type_8">Ploha</string>
    <string name="weather_type_9">Huda ploha</string>
    <string name="weather_type_10">Dež</string>
    <string name="weather_type_11">Rosenje</string>
    <string name="weather_type_12">Sodra</string>
    <string name="weather_type_13">Metež</string>
    <string name="weather_type_14">Nanosi snega</string>
    <string name="weather_type_15">Močno sneženje</string>
    <string name="weather_type_16">Sneženje</string>
    <string name="weather_type_17">Rahlo sneženje</string>
    <string name="weather_type_18">Huda peščena nevihta</string>
    <string name="weather_type_19">Peščena nevihta</string>
    <string name="weather_type_20">Rahla peščena nevihta</string>
    <string name="weather_type_21">Peščena nevihta</string>
    <string name="weather_type_22">Toča</string>
    <string name="weather_type_23">Plavajoč prah</string>
    <string name="weather_type_24">Meglica</string>
</resources>
PK
     \V�J����  �     strings/strings_pl_PL.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Pogodnie</string>
    <string name="weather_type_1">Pochmurno</string>
    <string name="weather_type_2">Mglisto</string>
    <string name="weather_type_3">Mglisto</string>
    <string name="weather_type_4">Potężna ulewa</string>
    <string name="weather_type_5">Ulewa</string>
    <string name="weather_type_6">Bardzo intensywne opady</string>
    <string name="weather_type_7">Burza z piorunami</string>
    <string name="weather_type_8">Deszczowo</string>
    <string name="weather_type_9">Intensywne opady deszczu</string>
    <string name="weather_type_10">Deszcz</string>
    <string name="weather_type_11">Mżawka</string>
    <string name="weather_type_12">Deszcz ze śniegiem</string>
    <string name="weather_type_13">Burza śnieżna</string>
    <string name="weather_type_14">Płaty śniegu</string>
    <string name="weather_type_15">Intensywne opady śniegu</string>
    <string name="weather_type_16">Opady śniegu</string>
    <string name="weather_type_17">Lekkie opady śniegu</string>
    <string name="weather_type_18">Silna burza piaskowa</string>
    <string name="weather_type_19">Burza piaskowa</string>
    <string name="weather_type_20">Lekka burza piaskowa</string>
    <string name="weather_type_21">Burza piaskowa</string>
    <string name="weather_type_22">Grad</string>
    <string name="weather_type_23">Unoszący się pył</string>
    <string name="weather_type_24">Mgiełka</string>
</resources>
PK
     �S�J<0��  �     strings/strings_de_DE.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE, d. MMMM</string>
    <string name="date_time_12">EEEE, d. MMMM</string>
    <string name="desc_date_format">EEEE, d. MMMM</string>
    <string name="desc_date_format_12">EEEE, d. MMMM</string>
	<string name="weather_type_0">Klar</string>
    <string name="weather_type_1">Bewölkt</string>
    <string name="weather_type_2">Trüb</string>
    <string name="weather_type_3">Neblig</string>
    <string name="weather_type_4">Schwere Gewitter</string>
    <string name="weather_type_5">Regensturm</string>
    <string name="weather_type_6">Sehr starke Regenfälle</string>
    <string name="weather_type_7">Gewitter</string>
    <string name="weather_type_8">Regenschauer</string>
    <string name="weather_type_9">Starker Niederschlag</string>
    <string name="weather_type_10">Regen</string>
    <string name="weather_type_11">Nieselregen</string>
    <string name="weather_type_12">Graupel</string>
    <string name="weather_type_13">Schneesturm</string>
    <string name="weather_type_14">Vereinzelt Schneefall</string>
    <string name="weather_type_15">Starker Schneefall</string>
    <string name="weather_type_16">Schneefall</string>
    <string name="weather_type_17">Leichter Schnellfall</string>
    <string name="weather_type_18">Starker Sandsturm</string>
    <string name="weather_type_19">Sandsturm</string>
    <string name="weather_type_20">Leichter Sandsturm</string>
    <string name="weather_type_21">Sandsturm</string>
    <string name="weather_type_22">Hagel</string>
    <string name="weather_type_23">Schwebender Staub</string>
    <string name="weather_type_24">Nebel</string>
</resources>
PK
     4��J҅C��  �     strings/strings_bo_CN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">ཟླ M ཚེས d E</string>
    <string name="date_time_12">ཟླ M ཚེས d Eaa</string>
    <string name="desc_date_format">ཟླ M ཚེས d E</string>
    <string name="desc_date_format_12">ཟླ M ཚེས d Eaa</string>
    <string name="desc_time">ifelse(eq(#time_format,0),#hour12,eq(#time_format,1),#hour24,#hour24)+'ཆུ་ཚོད'+ifelse(gt(#minute,0)*le(#minute,9),0,'')+ifelse(#minute,#minute+'སྐར་མ།','ཏག་ཏག')+', ཐེངས་གཉིས་གནན་ནས་དུས་ཚོད་Appནང་འཛུལ་བ།'</string>
    <string name="desc_weather">@weather_description+\', \'+#weather_temperature+\'ཏུའུ\'</string>
    <string name="desc_weather_null">'གནས་སྐབས་སུ་གཞི་གྲངས་མི་འདུག'</string>
    <string name="weather_type_null">'གནས་སྐབས་སུ་གཞི་གྲངས་མི་འདུག'</string>
    <string name="weather_type_0">གནམ་དྭངས།</string>
    <string name="weather_type_1">སྤྲིན་མང་།</string>
    <string name="weather_type_2">གནམ་འཐིབས།</string>
    <string name="weather_type_3">སྨུག་པ།</string>
    <string name="weather_type_4">དྲག་ཆར་ཤིན་ཏུ་ཆེན་པོ།</string>
    <string name="weather_type_5">དྲག་ཆར་ཆེན་པོ།</string>
    <string name="weather_type_6">དྲག་ཆར།</string>
    <string name="weather_type_7">འབྲུག་ཆར།</string>
    <string name="weather_type_8">ཐོལ་ཆར།</string>
    <string name="weather_type_9">ཆར་ཆེན།</string>
    <string name="weather_type_10">ཆར་འབྲིང་།</string>
    <string name="weather_type_11">ཆར་ཆུང་།</string>
    <string name="weather_type_12">ཁ་ཆར་འདྲེས་མ།</string>
    <string name="weather_type_13">ཁ་བ་དྲག་པོ།</string>
    <string name="weather_type_14">ཁ་བ་ཡུད་ཙམ་འབབ་པ།</string>
    <string name="weather_type_15">ཁ་བ་ཆེན་པོ།</string>
    <string name="weather_type_16">ཁ་བ་འབྲིང་ཙམ།</string>
    <string name="weather_type_17">ཁ་བ་ཆུང་ཆུང་།</string>
    <string name="weather_type_18">བྱེ་རླུང་འཚུབ་མ་དྲག་པོ།</string>
    <string name="weather_type_19">བྱེ་རླུང་འཚུབ་མ།</string>
    <string name="weather_type_20">བྱེ་རྡུལ།</string>
    <string name="weather_type_21">བྱེ་རླུང་།</string>
    <string name="weather_type_22">སེར་བ།</string>
    <string name="weather_type_23">ཐལ་རྡུལ།</string>
    <string name="weather_type_24">རྡུལ་ཞག</string>
    <string name="weather_type_25">འཁྱགས་ཆར།</string>
</resources>
PK
     KV�J�z��o  o     strings/strings_ne_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">सफा</string>
    <string name="weather_type_1">बादल लागेको</string>
    <string name="weather_type_2">धमिलो</string>
    <string name="weather_type_3">तुवाँलो लागेको</string>
    <string name="weather_type_4">तेज तूफान</string>
    <string name="weather_type_5">आँधी</string>
    <string name="weather_type_6">भारी बर्षा</string>
    <string name="weather_type_7">चट्याङ्</string>
    <string name="weather_type_8">बर्सनु</string>
    <string name="weather_type_9">भारी बर्षा</string>
    <string name="weather_type_10">बर्षा</string>
    <string name="weather_type_11">हल्का बर्षा</string>
    <string name="weather_type_12">असिना सहितको बर्षा</string>
    <string name="weather_type_13">हिमपात</string>
    <string name="weather_type_14">हिमपातको खण्डहरू</string>
    <string name="weather_type_15">भारी हिमपात</string>
    <string name="weather_type_16">हिमपात</string>
    <string name="weather_type_17">हलुका हिमपात</string>
    <string name="weather_type_18">बलियो बालुवाको आँधी</string>
    <string name="weather_type_19">धुलो सहितको तूफान</string>
    <string name="weather_type_20">हलुका धुलो सहितको तूफान</string>
    <string name="weather_type_21">धुलो सहितको तूफान</string>
    <string name="weather_type_22">असिना</string>
    <string name="weather_type_23">तैरिरहेको फोहोर</string>
    <string name="weather_type_24">तुवाँलो</string>
</resources>
PK
     sW�JB�q�y  y     strings/strings_sk_SK.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE, d. MMMM</string>
    <string name="date_time_12">EEEE, d. MMMM</string>
    <string name="desc_date_format">EEEE, d. MMMM</string>
    <string name="desc_date_format_12">EEEE, d. MMMM</string>
	<string name="weather_type_0">Jasno</string>
    <string name="weather_type_1">Oblačno</string>
    <string name="weather_type_2">Zamračené</string>
    <string name="weather_type_3">Hmlisto</string>
    <string name="weather_type_4">Búrka</string>
    <string name="weather_type_5">Dážď</string>
    <string name="weather_type_6">Lejak</string>
    <string name="weather_type_7">Búrka</string>
    <string name="weather_type_8">Dážď</string>
    <string name="weather_type_9">Lejak</string>
    <string name="weather_type_10">Dážď</string>
    <string name="weather_type_11">Jemný Dážď</string>
    <string name="weather_type_12">Dážď so snehom</string>
    <string name="weather_type_13">Snehová búrka</string>
    <string name="weather_type_14">Sneženie</string>
    <string name="weather_type_15">Sneženie</string>
    <string name="weather_type_16">Sneženie</string>
    <string name="weather_type_17">Sneženie</string>
    <string name="weather_type_18">Piesková búrka</string>
    <string name="weather_type_19">Piesková búrka</string>
    <string name="weather_type_20">Piesková búrka</string>
    <string name="weather_type_21">Piesková búrka</string>
    <string name="weather_type_22">Krupobitie</string>
    <string name="weather_type_23">Prašno</string>
    <string name="weather_type_24">Mrznúci dážď</string>
</resources>
PK
     yJM��BK       strings/strings_zh_CN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">M月d日 E</string>
    <string name="date_time_12">M月d日 Eaa</string>
    <string name="desc_date_format">M月d日 E</string>
    <string name="desc_date_format_12">M月d日 Eaa</string>
    <string name="desc_time">ifelse(eq(#time_format,0),#hour12,eq(#time_format,1),#hour24,#hour24)+'点'+ifelse(gt(#minute,0)*le(#minute,9),0,'')+ifelse(#minute,#minute+'分','整')+', 双击进入时钟App'</string>
	<string name="desc_weather">@weather_description+', '+#weather_temperature+'度'</string>
    <string name="desc_weather_null">'点击获取天气数据'</string>
	<string name="weather_type_null">'点击获取天气数据'</string>
	<string name="weather_type_0">晴</string>
    <string name="weather_type_1">多云</string>
    <string name="weather_type_2">阴</string>
    <string name="weather_type_3">雾</string>
    <string name="weather_type_4">特大暴雨</string>
    <string name="weather_type_5">大暴雨</string>
    <string name="weather_type_6">暴雨</string>
    <string name="weather_type_7">雷阵雨</string>
    <string name="weather_type_8">阵雨</string>
    <string name="weather_type_9">大雨</string>
    <string name="weather_type_10">中雨</string>
    <string name="weather_type_11">小雨</string>
    <string name="weather_type_12">雨夹雪</string>
    <string name="weather_type_13">暴雪</string>
    <string name="weather_type_14">阵雪</string>
    <string name="weather_type_15">大雪</string>
    <string name="weather_type_16">中雪</string>
    <string name="weather_type_17">小雪</string>
    <string name="weather_type_18">强沙尘暴</string>
    <string name="weather_type_19">沙尘暴</string>
    <string name="weather_type_20">沙尘</string>
    <string name="weather_type_21">扬沙</string>
    <string name="weather_type_22">冰雹</string>
    <string name="weather_type_23">浮尘</string>
    <string name="weather_type_24">霾</string>
    <string name="weather_type_25">冻雨</string>
</resources>
PK
     yV�J1�Y��  �     strings/strings_te_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">నిర్మలంగా ఉంది</string>
    <string name="weather_type_1">మేఘావృతం</string>
    <string name="weather_type_2">మబ్బు పట్టినట్లు ఉంది</string>
    <string name="weather_type_3">పొగమంచు</string>
    <string name="weather_type_4">తీవ్రమైన గాలివాన</string>
    <string name="weather_type_5">గాలివాన</string>
    <string name="weather_type_6">అత్యంత భారీ వర్షపాతం</string>
    <string name="weather_type_7">ఉరుములతో కూడిన గాలివాన</string>
    <string name="weather_type_8">వానజల్లు</string>
    <string name="weather_type_9">భారీ వర్షపాతం</string>
    <string name="weather_type_10">వర్షం</string>
    <string name="weather_type_11">చినుకులు</string>
    <string name="weather_type_12">మంచు వాన</string>
    <string name="weather_type_13">మంచు తుఫాను</string>
    <string name="weather_type_14">హిమపాతం పొగమంచు</string>
    <string name="weather_type_15">భారీ హిమపాతం</string>
    <string name="weather_type_16">హిమపాతం</string>
    <string name="weather_type_17">తేలికపాటి హిమపాతం</string>
    <string name="weather_type_18">బలమైన ఇసుక తుఫాను</string>
    <string name="weather_type_19">ఇసుక తుఫాను</string>
    <string name="weather_type_20">తేలికపాటి ఇసుక తుఫాను</string>
    <string name="weather_type_21">ఇసుక తుఫాను</string>
    <string name="weather_type_22">వడగళ్లు</string>
    <string name="weather_type_23">తేలియాడే దుమ్ముధూళి</string>
    <string name="weather_type_24">పొగమంచు</string>
</resources>
PK
     �yJM��qK^  ^     strings/strings.xml<?xml version="1.0" encoding="utf-8"?>
<resources> 
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
    <string name="desc_time">'current time' + #hour12+' '+ifelse(#minute,#minute,'oclock')+', double tap to enter clock app'</string>
	<string name="weather_type_null">' '</string>
	<string name="weather_type_0">Clear</string>
    <string name="weather_type_1">Cloudy</string>
    <string name="weather_type_2">Hazy</string>
    <string name="weather_type_3">Foggy</string>
    <string name="weather_type_4">Severe rainstorm</string>
    <string name="weather_type_5">Rainstorm</string>
    <string name="weather_type_6">Very heavy rainfall</string>
    <string name="weather_type_7">Thunderstorm</string>
    <string name="weather_type_8">Shower</string>
    <string name="weather_type_9">Heavy rainfall</string>
    <string name="weather_type_10">Rain</string>
    <string name="weather_type_11">Drizzle</string>
    <string name="weather_type_12">Sleet</string>
    <string name="weather_type_13">Snowstorm</string>
    <string name="weather_type_14">Patches of snowfall</string>
    <string name="weather_type_15">Heavy snowfall</string>
    <string name="weather_type_16">Snowfall</string>
    <string name="weather_type_17">Light snowfall</string>
    <string name="weather_type_18">Strong sandstorm</string>
    <string name="weather_type_19">Sandstorm</string>
    <string name="weather_type_20">Light sandstorm</string>
    <string name="weather_type_21">Sandstorm</string>
    <string name="weather_type_22">Hail</string>
    <string name="weather_type_23">Floating Dust</string>
    <string name="weather_type_24">Haze</string>
    <string name="weather_type_25">Freezing rain</string>
</resources>
PK
     ,��Jd���'	  '	     strings/strings_ug_CN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="desc_weather">\@weather_location+\', \'+@weather_description+\', \'+#weather_temperature+\'سېلسىيە گرادۇس\'</string>
    <string name="desc_weather_null">'سانلىق مەلۇمات يوق'</string>
    <string name="weather_type_null">'سانلىق مەلۇمات يوق'</string>
    <string name="weather_type_0">ئوچۇق</string>
    <string name="weather_type_1">بۇلۇتلۇق</string>
    <string name="weather_type_2">تۇتۇق</string>
    <string name="weather_type_3">تۇمانلىق</string>
    <string name="weather_type_4">ئالاھىدە چوڭ قارا يامغۇر</string>
    <string name="weather_type_5">چوڭ قارا يامغۇر</string>
    <string name="weather_type_6">قاتتىق يامغۇر</string>
    <string name="weather_type_7">گۈلدۈرماملىق ئۆتكۈنچى يامغۇر</string>
    <string name="weather_type_8">ئۆتكۈنچى يامغۇر</string>
    <string name="weather_type_9">چوڭ يامغۇر</string>
    <string name="weather_type_10">ئوتتۇر ھال يامغۇر</string>
    <string name="weather_type_11">ئازراق يامغۇر</string>
    <string name="weather_type_12">يامغۇر ئارىلاش قار</string>
    <string name="weather_type_13">دەھشەت قار</string>
    <string name="weather_type_14">ئۆتكۈنچى قار</string>
    <string name="weather_type_15">چوڭ قار</string>
    <string name="weather_type_16">ئوتتۇرا ھال قار</string>
    <string name="weather_type_17">ئازراق قار</string>
    <string name="weather_type_18">كۈچلۈك قۇم بوران</string>
    <string name="weather_type_19">قۇم بوران</string>
    <string name="weather_type_20">چاڭ تۇزان</string>
    <string name="weather_type_21">قۇم ئۇچۇش</string>
    <string name="weather_type_22">مۆلدۈر</string>
    <string name="weather_type_23">چاڭ توزان</string>
    <string name="weather_type_24">تۈتەك</string>
    <string name="weather_type_25">توڭ يامغۇر</string>
</resources>
PK
     �S�J;���  �     strings/strings_el_GR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Αίθριος</string>
    <string name="weather_type_1">Νεφελώδης</string>
    <string name="weather_type_2">Αιθαλομίχλη</string>
    <string name="weather_type_3">Ομιχλώδης</string>
    <string name="weather_type_4">Έντονη νεροποντή</string>
    <string name="weather_type_5">Νεροποντή</string>
    <string name="weather_type_6">Πολύ βαριά βροχόπτωση</string>
    <string name="weather_type_7">Καταιγίδα</string>
    <string name="weather_type_8">Ψιλόβροχο</string>
    <string name="weather_type_9">Έντονη βροχόπτωση</string>
    <string name="weather_type_10">Βροχή</string>
    <string name="weather_type_11">Ψιλόβροχο</string>
    <string name="weather_type_12">Χιονόνερο</string>
    <string name="weather_type_13">Χιονοθύελλα</string>
    <string name="weather_type_14">Νιφάδες χιονιού</string>
    <string name="weather_type_15">Έντονη χιονόπτωση</string>
    <string name="weather_type_16">Χιονόπτωση</string>
    <string name="weather_type_17">Ελαφριά χιονόπτωση</string>
    <string name="weather_type_18">Ισχυρή αμμοθύελλα</string>
    <string name="weather_type_19">Αμμοθύελλα</string>
    <string name="weather_type_20">Ελαφριά αμμοθύελλα</string>
    <string name="weather_type_21">Αμμοθύελλα</string>
    <string name="weather_type_22">Χαλάζι</string>
    <string name="weather_type_23">Αιωρούμενη σκόνη</string>
    <string name="weather_type_24">Ομίχλη</string>
</resources>
PK
     6U�J����_  _     strings/strings_hr_HR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE, d. MMMM</string>
    <string name="date_time_12">EEEE, d. MMMM</string>
    <string name="desc_date_format">EEEE, d. MMMM</string>
    <string name="desc_date_format_12">EEEE, d. MMMM</string>
	<string name="weather_type_0">Vedro</string>
    <string name="weather_type_1">Oblačno</string>
    <string name="weather_type_2">Maglovito</string>
    <string name="weather_type_3">Magla</string>
    <string name="weather_type_4">Jaka kiša</string>
    <string name="weather_type_5">Kišna oluja</string>
    <string name="weather_type_6">Pljusak</string>
    <string name="weather_type_7">Oluja</string>
    <string name="weather_type_8">Pljusak</string>
    <string name="weather_type_9">Pljusak</string>
    <string name="weather_type_10">Kiša</string>
    <string name="weather_type_11">Slaba kiša</string>
    <string name="weather_type_12">Kiša s snijegom</string>
    <string name="weather_type_13">Mećava</string>
    <string name="weather_type_14">Snijeg</string>
    <string name="weather_type_15">Snijeg</string>
    <string name="weather_type_16">Snijeg</string>
    <string name="weather_type_17">Snijeg</string>
    <string name="weather_type_18">Pješčana oluja</string>
    <string name="weather_type_19">Pješčana oluja</string>
    <string name="weather_type_20">Pješčana oluja</string>
    <string name="weather_type_21">Pješčana oluja</string>
    <string name="weather_type_22">Tuča</string>
    <string name="weather_type_23">Prašina</string>
    <string name="weather_type_24">Ledena kiša</string>
</resources>
PK
     eW�J,/���  �     strings/strings_pt_BR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE, dd MMMM</string>
    <string name="date_time_12">EEEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMMM</string>
    <string name="desc_date_format_12">EEEE, dd MMMM</string>
	<string name="weather_type_0">Limpo</string>
    <string name="weather_type_1">Nublado</string>
    <string name="weather_type_2">Nublado</string>
    <string name="weather_type_3">Nebuloso</string>
    <string name="weather_type_4">Chuva forte</string>
    <string name="weather_type_5">Chuva</string>
    <string name="weather_type_6">Chuva muito forte</string>
    <string name="weather_type_7">Tempestade</string>
    <string name="weather_type_8">Chuva</string>
    <string name="weather_type_9">Chuva forte</string>
    <string name="weather_type_10">Chuva</string>
    <string name="weather_type_11">Garoa</string>
    <string name="weather_type_12">Granizo</string>
    <string name="weather_type_13">Tempestade de neve</string>
    <string name="weather_type_14">Neve esparsa</string>
    <string name="weather_type_15">Nevasca forte</string>
    <string name="weather_type_16">Nevasca</string>
    <string name="weather_type_17">Nevasca leve</string>
    <string name="weather_type_18">Tempestade de areia forte</string>
    <string name="weather_type_19">Tempestade de areia</string>
    <string name="weather_type_20">Tempestade de areia leve</string>
    <string name="weather_type_21">Tempestade de areia</string>
    <string name="weather_type_22">Granizo</string>
    <string name="weather_type_23">Poeira</string>
    <string name="weather_type_24">Neblina</string>
</resources>
PK
     �T�J��  �     strings/strings_es_US.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Despejado</string>
    <string name="weather_type_1">Nublado</string>
    <string name="weather_type_2">Bruma</string>
    <string name="weather_type_3">Niebla</string>
    <string name="weather_type_4">Tormentas de lluvia fuerte</string>
    <string name="weather_type_5">Tormentas de lluvia</string>
    <string name="weather_type_6">Lluvias muy fuertes</string>
    <string name="weather_type_7">Tormenta eléctrica</string>
    <string name="weather_type_8">Chubascos</string>
    <string name="weather_type_9">Diluvio</string>
    <string name="weather_type_10">Lluvia</string>
    <string name="weather_type_11">Llovizna</string>
    <string name="weather_type_12">Aguanieve</string>
    <string name="weather_type_13">Tormenta de nieve</string>
    <string name="weather_type_14">Nevada intermitente</string>
    <string name="weather_type_15">Nevada intensa</string>
    <string name="weather_type_16">Nevada</string>
    <string name="weather_type_17">Nevada ligera</string>
    <string name="weather_type_18">Fuerte tormenta de arena</string>
    <string name="weather_type_19">Tormenta de arena</string>
    <string name="weather_type_20">Tormentas de arena ligeras</string>
    <string name="weather_type_21">Tormenta de arena</string>
    <string name="weather_type_22">Granizo</string>
    <string name="weather_type_23">Polvo</string>
    <string name="weather_type_24">Neblina</string>
</resources>
PK
     W�J��(��  �     strings/strings_ko_KR.xml<?xml version="1.0" encoding="utf-8"?>
<resources> 
    <string name="date_time">M월dd일 EEEE</string>
    <string name="date_time_12">M월dd일 EEEE</string>
    <string name="desc_date_format">M월dd일 EEEE</string>
    <string name="desc_date_format_12">M월dd일 EEEE</string>
    <string name="desc_time">'current time' + #hour12+' '+ifelse(#minute,#minute,'oclock')+', double tap to enter clock app'</string>
	<string name="weather_type_0">맑음</string>
    <string name="weather_type_1">흐림</string>
    <string name="weather_type_2">연무</string>
    <string name="weather_type_3">안개</string>
    <string name="weather_type_4">집중 호우</string>
    <string name="weather_type_5">호우</string>
    <string name="weather_type_6">집중 폭우</string>
    <string name="weather_type_7">뇌우</string>
    <string name="weather_type_8">소나기</string>
    <string name="weather_type_9">폭우</string>
    <string name="weather_type_10">비</string>
    <string name="weather_type_11">이슬비</string>
    <string name="weather_type_12">진눈깨비</string>
    <string name="weather_type_13">눈보라</string>
    <string name="weather_type_14">곳에 따라 강설</string>
    <string name="weather_type_15">폭설</string>
    <string name="weather_type_16">강설</string>
    <string name="weather_type_17">약한 강설</string>
    <string name="weather_type_18">강한 황사</string>
    <string name="weather_type_19">황사</string>
    <string name="weather_type_20">약한 황사</string>
    <string name="weather_type_21">황사</string>
    <string name="weather_type_22">우박</string>
    <string name="weather_type_23">미세먼지</string>
    <string name="weather_type_24">아지랑이</string>
</resources>
PK
     �V�J�����  �     strings/strings_vi_VN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Quang</string>
    <string name="weather_type_1">Nhiều mây</string>
    <string name="weather_type_2">Sương mù</string>
    <string name="weather_type_3">Sương mù</string>
    <string name="weather_type_4">Mưa bão dữ dội</string>
    <string name="weather_type_5">Mưa bão</string>
    <string name="weather_type_6">Mưa rất lớn</string>
    <string name="weather_type_7">Dông</string>
    <string name="weather_type_8">Mưa rào</string>
    <string name="weather_type_9">Mưa lớn</string>
    <string name="weather_type_10">Mưa</string>
    <string name="weather_type_11">Mưa phùn</string>
    <string name="weather_type_12">Mưa tuyết</string>
    <string name="weather_type_13">Bão tuyết</string>
    <string name="weather_type_14">Tuyết rơi từng đợt</string>
    <string name="weather_type_15">Tuyết rơi dày</string>
    <string name="weather_type_16">Tuyết rơi</string>
    <string name="weather_type_17">Tuyết rơi nhẹ</string>
    <string name="weather_type_18">Bão cát mạnh</string>
    <string name="weather_type_19">Bão cát</string>
    <string name="weather_type_20">Bão cát nhẹ</string>
    <string name="weather_type_21">Bão cát</string>
    <string name="weather_type_22">Mưa đá</string>
    <string name="weather_type_23">Bụi</string>
    <string name="weather_type_24">Sương mù</string>
</resources>
PK
     CV�JE=�
  
     strings/strings_my_MM.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">ကြည်လင်သော</string>
    <string name="weather_type_1">မိုးအုံ့</string>
    <string name="weather_type_2">ဝိုးတိုးဝါးတား</string>
    <string name="weather_type_3">မြူဆိုင်းသော</string>
    <string name="weather_type_4">ပြင်းထန်သော မိုးလေမုန်တိုင်း</string>
    <string name="weather_type_5">မုန်တိုင်း</string>
    <string name="weather_type_6">မိုးရေချိန်အလွန်မြင့်ခြင်း</string>
    <string name="weather_type_7">မိုးကြိုးမုန်တိုင်း</string>
    <string name="weather_type_8">မိုးဖွဲဖွဲရွာသွန်း</string>
    <string name="weather_type_9">မိုးသည်းထန်စွာရွာသွန်း</string>
    <string name="weather_type_10">မိုး</string>
    <string name="weather_type_11">မိုးဖွဲ</string>
    <string name="weather_type_12">မိုးနှင်း</string>
    <string name="weather_type_13">နှင်းမုန်တိုင်း</string>
    <string name="weather_type_14">ကွက်ကျား ဆီးနှင်းကျခြင်း</string>
    <string name="weather_type_15">ဆီးနှင်းအလွန်ကျခြင်း</string>
    <string name="weather_type_16">ဆီးနှင်းကျခြင်း</string>
    <string name="weather_type_17">ဆီးနှင်းပါးပါးကျခြင်း</string>
    <string name="weather_type_18">သဲမုန်တိုင်းကြီး</string>
    <string name="weather_type_19">သဲမုန်တိုင်း</string>
    <string name="weather_type_20">အားနည်းသော သဲမုန်တိုင်း</string>
    <string name="weather_type_21">သဲမုန်တိုင်း</string>
    <string name="weather_type_22">မိုးသီးကြွေခြင်း</string>
    <string name="weather_type_23">ဟိုပြေးဒီပြေး ဖုန်မှုန့်များ</string>
    <string name="weather_type_24">မြူ</string>
</resources>
PK
     �T�J� gY�  �     strings/strings_fr_FR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE d MMMM</string>
    <string name="date_time_12">EEEE d MMMM</string>
    <string name="desc_date_format">EEEE d MMMM</string>
    <string name="desc_date_format_12">EEEE d MMMM</string>
	<string name="weather_type_0">Dégagé</string>
    <string name="weather_type_1">Nuageux</string>
    <string name="weather_type_2">Couvert</string>
    <string name="weather_type_3">Brumeux</string>
    <string name="weather_type_4">Fortes pluies</string>
    <string name="weather_type_5">Pluie torrentielle</string>
    <string name="weather_type_6">Orages</string>
    <string name="weather_type_7">Orageux</string>
    <string name="weather_type_8">Pluie battante</string>
    <string name="weather_type_9">Fortes pluies</string>
    <string name="weather_type_10">Pluie</string>
    <string name="weather_type_11">Bruine</string>
    <string name="weather_type_12">Giboulée</string>
    <string name="weather_type_13">Tempête de neige</string>
    <string name="weather_type_14">Chutes de neige</string>
    <string name="weather_type_15">Fortes chutes de neige</string>
    <string name="weather_type_16">Chutes de neige</string>
    <string name="weather_type_17">Faibles chutes de neige</string>
    <string name="weather_type_18">Forte tempête de sable</string>
    <string name="weather_type_19">Tempête de sable</string>
    <string name="weather_type_20">Petite tempête de sable</string>
    <string name="weather_type_21">Tempête de sable</string>
    <string name="weather_type_22">Grêle</string>
    <string name="weather_type_23">Poussière dans l'air</string>
    <string name="weather_type_24">Brouillard</string>
</resources>
PK
     �V�J?�>��  �     strings/strings_uk_UA.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">Ясно</string>
    <string name="weather_type_1">Хмарно</string>
    <string name="weather_type_2">Серпанок</string>
    <string name="weather_type_3">Туман</string>
    <string name="weather_type_4">Сильний дощ</string>
    <string name="weather_type_5">Злива</string>
    <string name="weather_type_6">Буревій</string>
    <string name="weather_type_7">Гроза</string>
    <string name="weather_type_8">Злива</string>
    <string name="weather_type_9">Сильний дощ</string>
    <string name="weather_type_10">Дощ</string>
    <string name="weather_type_11">Мряка</string>
    <string name="weather_type_12">Мокрий сніг</string>
    <string name="weather_type_13">Заметіль</string>
    <string name="weather_type_14">Зливи зі снігом</string>
    <string name="weather_type_15">Сильний снігопад</string>
    <string name="weather_type_16">Сніг</string>
    <string name="weather_type_17">Невеликий сніг</string>
    <string name="weather_type_18">Сильна піщана буря</string>
    <string name="weather_type_19">Піщана буря</string>
    <string name="weather_type_20">Пил</string>
    <string name="weather_type_21">Піщана буря</string>
    <string name="weather_type_22">Град</string>
    <string name="weather_type_23">Бруд</string>
    <string name="weather_type_24">Імла</string>
</resources>
PK
     lV�J�����  �     strings/strings_ta_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
	<string name="weather_type_0">தெளிவான</string>
    <string name="weather_type_1">மேக மூட்டம்</string>
    <string name="weather_type_2">தெளிவற்றது</string>
    <string name="weather_type_3">மூடுபனி</string>
    <string name="weather_type_4">கடுமையான புயல்மழை</string>
    <string name="weather_type_5">புயல்மழை</string>
    <string name="weather_type_6">மிகவும் பலத்த மழை</string>
    <string name="weather_type_7">இடியுடன் கூடிய மழை</string>
    <string name="weather_type_8">மழைத் தூறல்</string>
    <string name="weather_type_9">கன மழை</string>
    <string name="weather_type_10">மழை</string>
    <string name="weather_type_11">தூறல்</string>
    <string name="weather_type_12">பனிமழை</string>
    <string name="weather_type_13">பனிப்புயல்</string>
    <string name="weather_type_14">அவ்வப்போது பனிப்பொழிவு</string>
    <string name="weather_type_15">கடும் பனிப்பொழிவு</string>
    <string name="weather_type_16">பனிப்பொழிவு</string>
    <string name="weather_type_17">லேசான பனிப்பொழிவு</string>
    <string name="weather_type_18">வலுவான மணற்புயல்</string>
    <string name="weather_type_19">மணற்புயல்</string>
    <string name="weather_type_20">லேசான மணற்புயல்</string>
    <string name="weather_type_21">மணற்புயல்</string>
    <string name="weather_type_22">ஆலங்கட்டி மழை</string>
    <string name="weather_type_23">மிதக்கும் தூசு</string>
    <string name="weather_type_24">தெளிவற்றது</string>
</resources>
PK
     ���K��?j�   �              �    description.xmlPK
     k��K�7w�'  '             큽   manifest.xmlPK
     �Z/N                      �A  strings/PK
     YV�J#Z!�D  D             �4  strings/strings_pa_IN.xmlPK
     OV�J�z��o  o             큯  strings/strings_ne_NP.xmlPK
     X�JXo�p  p             �U  strings/strings_ur_IN.xmlPK
     @V�J(�۬  �             ��&  strings/strings_ms_MY.xmlPK
     +V�J}9��  �             ��-  strings/strings_iw_IL.xmlPK
     +X�J��)[{  {             ��4  strings/strings_uz_UZ.xmlPK
     D��JYf�Yq  q             큖;  strings/strings_ar_EG.xmlPK
     �T�Jm�]��  �             �>C  strings/strings_es_ES.xmlPK
     X�J�oa-�  �             �(J  strings/strings_tr_TR.xmlPK
     #X�JXo�p  p             �(Q  strings/strings_ur_PK.xmlPK
     U�J
�f  f             ��X  strings/strings_hi_IN.xmlPK
     �T�J!�>  >             �la  strings/strings_fa_IR.xmlPK
     j��J
|M\�  �             ��h  strings/strings_as_IN.xmlPK
     (V�J�x�  �             ��q  strings/strings_it_IT.xmlPK
     :V�J�k%  %             ��x  strings/strings_mr_IN.xmlPK
     HW�Jb��z  z             �.�  strings/strings_lt_LT.xmlPK
     yJM��C�h  h             �߇  strings/strings_zh_HK.xmlPK
     7V�J���	  �	             �~�  strings/strings_ml_IN.xmlPK
     ���Ju��;o  o             큀�  strings/strings_bg_BG.xmlPK
     X�JD ��	  	             �&�  strings/strings_th_TH.xmlPK
     ���J�y��  �             �e�  strings/strings_bn_IN.xmlPK
     cV�J� ���  �             �]�  strings/strings_ro_RO.xmlPK
     `U�J�w!�  �             �_�  strings/strings_in_ID.xmlPK
     �S�JM�  �             �%�  strings/strings_cs_CZ.xmlPK
     RU�J�P�  �             ��  strings/strings_hu_HU.xmlPK
     UV�J���Z  Z             ���  strings/strings_or_IN.xmlPK
     @T�J��m*  *             �w�  strings/strings_en_US.xmlPK
     fV�J*юc  c             ���  strings/strings_ru_RU.xmlPK
     yJM��C�h  h             �r�  strings/strings_zh_TW.xmlPK
     /V�JUGYЙ  �             ��  strings/strings_kn_IN.xmlPK
     	U�J���U  U             ���  strings/strings_gu_IN.xmlPK
     ���J�y��  �             �m�  strings/strings_bn_BD.xmlPK
     yW�J[��  �             �e strings/strings_sl_SI.xmlPK
     \V�J����  �             �% strings/strings_pl_PL.xmlPK
     �S�J<0��  �             �) strings/strings_de_DE.xmlPK
     4��J҅C��  �             � strings/strings_bo_CN.xmlPK
     KV�J�z��o  o             �4) strings/strings_ne_IN.xmlPK
     sW�JB�q�y  y             ��1 strings/strings_sk_SK.xmlPK
     yJM��BK               큊8 strings/strings_zh_CN.xmlPK
     yV�J1�Y��  �             ��@ strings/strings_te_IN.xmlPK
     �yJM��qK^  ^             ��I strings/strings.xmlPK
     ,��Jd���'	  '	             큌Q strings/strings_ug_CN.xmlPK
     �S�J;���  �             ��Z strings/strings_el_GR.xmlPK
     6U�J����_  _             ��b strings/strings_hr_HR.xmlPK
     eW�J,/���  �             �qi strings/strings_pt_BR.xmlPK
     �T�J��  �             �4p strings/strings_es_US.xmlPK
     W�J��(��  �             �$w strings/strings_ko_KR.xmlPK
     �V�J�����  �             �A~ strings/strings_vi_VN.xmlPK
     CV�JE=�
  
             �� strings/strings_my_MM.xmlPK
     �T�J� gY�  �             �T� strings/strings_fr_FR.xmlPK
     �V�J?�>��  �             �I� strings/strings_uk_UA.xmlPK
     lV�J�����  �             �y� strings/strings_ta_IN.xmlPK    7 7   v�   