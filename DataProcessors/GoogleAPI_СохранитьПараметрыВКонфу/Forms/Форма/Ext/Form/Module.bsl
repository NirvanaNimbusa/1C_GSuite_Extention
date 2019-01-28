﻿
&НаСервере
Процедура СохранитьПараметрыНаСервере()
	
	СтруктураНастроек = GoogleAPI_Авторизация.ПолучитьПараметрыАвторизацииПользователя();
	
	СтруктураНастроек.ид_клиента			= 	Объект.ид_клиента;
	СтруктураНастроек.секрет_клиента		= 	Объект.секрет_клиента;
	СтруктураНастроек.ИмяФайла				= 	Объект.ИмяФайла;
	СтруктураНастроек.ИмяПапки				= 	Объект.ИмяПапки;
	
	СтруктураНастроек.Вставить("Порт", 					Объект.Порт);
	
	СтруктураНастроек.Вставить("СерверАвторизации", 	"accounts.google.com");
	СтруктураНастроек.Вставить("РесурсАвторизации", 	"/o/oauth2/token");
	СтруктураНастроек.Вставить("СерверGS", 				"www.googleapis.com");
	СтруктураНастроек.Вставить("СерверGSheets", 		"sheets.googleapis.com");
	СтруктураНастроек.Вставить("РесурсGDrive", 			"/drive/v3/files");
	СтруктураНастроек.Вставить("РесурсЗагрузкиGDrive", 	"/upload/drive/v2/files");
	СтруктураНастроек.Вставить("РесурсTeamDrive", 		"/drive/v3/teamdrives");		
	СтруктураНастроек.Вставить("РесурсGSheets", 		"/v4/spreadsheets/");
	
	GoogleAPI_Авторизация.СформироватьИСохранитьСтруктуруНастроек(СтруктураНастроек);
	
КонецПроцедуры

&НаКлиенте
Процедура СохранитьПараметры(Команда)
	СохранитьПараметрыНаСервере();
КонецПроцедуры

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	//СтруктураНастроек = GoogleAPI_Авторизация.ПолучитьАктуальнуюСтруктуруGoogleAPI();
	//Если СтруктураНастроек = Неопределено Тогда 
		//значения по умолчанию
		Объект.ИмяФайла 		= GoogleAPI_ОбщегоНазначения.ПолучитьИмяКонфигурации() + "_KeyGoogleAPI";
		Объект.ИмяПапки 		= "KeyGoogleAPI";
	//Иначе 		
	//	Объект.ид_клиента 		= СтруктураНастроек.ид_клиента;
	//	Объект.секрет_клиента 	= СтруктураНастроек.секрет_клиента;
	//	Объект.Порт				= СтруктураНастроек.Порт;
	//	Объект.ИмяФайла 		= СтруктураНастроек.ИмяФайла;
	//	Объект.ИмяПапки 		= СтруктураНастроек.ИмяПапки;
	//КонецЕсли;	
	
КонецПроцедуры
