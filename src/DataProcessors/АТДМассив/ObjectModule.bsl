Перем ЭлементыМассива;

// Преобразует переданные элементы в массив 
// 
// Параметры:
//  НовыеЭлементы - массив - Коллекция элементов, для которой доступен обход ДляКаждого. 
//  	Если параметр не задан, то преобразуется текущая коллекция в массив элементов.
// 
// Возвращаемое значение:
//  ОбработкаОбъект.АТДМассив - Массив
Функция Массив(НовыеЭлементы = Неопределено) Экспорт
	Если НовыеЭлементы = Неопределено Тогда
		Если ТипЗнч(ЭлементыМассива) = Тип("Массив") Тогда
			Возврат ЭтотОбъект;
		КонецЕсли;		
		ЭлементыМассива = ОбщегоНазначенияКлиентСервер.СкопироватьМассив(ЭлементыМассива);
		Возврат ЭтотОбъект;
	КонецЕсли;
	ЭлементыМассива = ОбщегоНазначенияКлиентСервер.СкопироватьМассив(НовыеЭлементы);
	Возврат ЭтотОбъект;
КонецФункции

Функция Установить(Элементы) Экспорт
	ЭлементыМассива = Элементы;
	Возврат ЭтотОбъект;
КонецФункции

Функция ВМассив() Экспорт
	Если ТипЗнч(ЭлементыМассива) <> Тип("Массив") Тогда
		Массив();
	КонецЕсли;
	Возврат ЭлементыМассива;
КонецФункции

Функция ВФиксированныйМассив() Экспорт
	Возврат Новый ФиксированныйМассив(ВМассив());
КонецФункции

//  filter
Функция Отобрать(ВыражениеПредиката, Контекст = Неопределено, Параметры = Неопределено) Экспорт
	ЭлементыМассива = РаботаСМассивом.Отобрать(ЭлементыМассива, ВыражениеПредиката, Контекст, Параметры);
	Возврат ЭтотОбъект;
КонецФункции

//  find
Функция НайтиЭлемент(ВыражениеПредиката, Контекст = Неопределено, Параметры = Неопределено) Экспорт
	Возврат РаботаСМассивом.НайтиЭлемент(ЭлементыМассива, ВыражениеПредиката, Контекст, Параметры);
КонецФункции

// sortBy
// Пример:
//Фрукты = Общий.АТДМассив(СтрРазделить("вишня, арбузы, бананы", ", ", Ложь));
//Фрукты.Сортировать();
//Фрукты.ДляКаждого("Сообщить(Элемент)");// [арбузы, бананы, вишня]
// 
// Параметры:
//  ВыражениеПредиката - Строка
//  Контекст - Неопределено - Контекст
// 
// Возвращаемое значение:
//  ОбработкаОбъект.АТДМассив - Сортировать
Функция СортироватьПо(Поля) Экспорт
	РаботаСМассивом.СортироватьПо(ЭлементыМассива, Поля);
	Возврат ЭтотОбъект;
КонецФункции

// sort
// Пример:
//Фрукты = Общий.АТДМассив(СтрРазделить("вишня, арбузы, бананы", ", ", Ложь));
//Фрукты.Сортировать();
//Фрукты.ДляКаждого("Сообщить(Элемент)");// [арбузы, бананы, вишня]
// 
// Параметры:
//  ВыражениеПредиката - Строка
//  Контекст - Неопределено - Контекст
// 
// Возвращаемое значение:
//  ОбработкаОбъект.АТДМассив - Сортировать
Функция Сортировать(ВыражениеПредиката = Неопределено, Контекст = Неопределено, Параметры = Неопределено) Экспорт
	РаботаСМассивом.Сортировать(ЭлементыМассива, ВыражениеПредиката, Контекст, Параметры);
	Возврат ЭтотОбъект;
КонецФункции

// map
// 
// Параметры:
//  Выражение - Строка - Выражение функции
//  Контекст - Неопределено - Контекст
//  Параметры - Неопределено - Параметры
// 
// Возвращаемое значение:
//  ОбработкаОбъект.АТДМассив - Отобразить
Функция Отобразить(Выражение, Контекст = Неопределено, Параметры = Неопределено) Экспорт
	ЭлементыМассива = РаботаСМассивом.Отобразить(ЭлементыМассива, Выражение, Контекст, Параметры);
	Возврат ЭтотОбъект;
КонецФункции

// reduce
// 
// Параметры:
//  Выражение - Строка - Выражение функции
//  НачальноеЗначение - Неопределено - Начальное значение
//  Контекст - Неопределено - Контекст
//  Параметры - Неопределено - Параметры
// 
// Возвращаемое значение:
//  Произвольный - Преобразовать
Функция Преобразовать(Выражение, НачальноеЗначение = Неопределено, Контекст = Неопределено, Параметры = Неопределено) Экспорт
	Возврат РаботаСМассивом.Преобразовать(ЭлементыМассива, Выражение, НачальноеЗначение, Контекст, Параметры);
КонецФункции

//  pop
Функция Взять() Экспорт
	Возврат РаботаСМассивом.Взять(ЭлементыМассива);
КонецФункции

//  push
Функция Положить(Элемент) Экспорт
	РаботаСМассивом.Положить(ЭлементыМассива, Элемент);
	Возврат ЭтотОбъект;
КонецФункции

//  forEach
Функция ДляКаждого(Алгоритм, Контекст = Неопределено, Параметры = Неопределено) Экспорт
	РаботаСМассивом.ДляКаждого(ЭлементыМассива, Алгоритм, Контекст, Параметры);
	Возврат ЭтотОбъект;
КонецФункции

Функция ДополнитьМассив(МассивИсточник, ТолькоУникальныеЗначения = Ложь) Экспорт
	РаботаСМассивом.ДополнитьМассив(ЭлементыМассива, МассивИсточник, ТолькоУникальныеЗначения);
	Возврат ЭтотОбъект;
КонецФункции

ЭлементыМассива = Новый Массив;
