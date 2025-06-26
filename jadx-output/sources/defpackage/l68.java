package defpackage;

import defpackage.s68;
import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
public final class l68 extends f68 {
    public static final Comparator<Map.Entry<String, Long>> c = new a();
    public final ConcurrentMap<Map.Entry<y68, Locale>, Object> b = new ConcurrentHashMap(16, 0.75f, 2);

    public class a implements Comparator<Map.Entry<String, Long>> {
        @Override // java.util.Comparator
        public int compare(Map.Entry<String, Long> entry, Map.Entry<String, Long> entry2) {
            return entry2.getKey().length() - entry.getKey().length();
        }
    }

    public static final class b {
        public final Map<m68, Map<Long, String>> a;

        public b(Map<m68, Map<Long, String>> map) {
            this.a = map;
            HashMap map2 = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (m68 m68Var : map.keySet()) {
                HashMap map3 = new HashMap();
                for (Map.Entry<Long, String> entry : map.get(m68Var).entrySet()) {
                    String value = entry.getValue();
                    String value2 = entry.getValue();
                    Long key = entry.getKey();
                    Comparator<Map.Entry<String, Long>> comparator = l68.c;
                    map3.put(value, new AbstractMap.SimpleImmutableEntry(value2, key));
                }
                ArrayList arrayList2 = new ArrayList(map3.values());
                Comparator<Map.Entry<String, Long>> comparator2 = l68.c;
                Collections.sort(arrayList2, l68.c);
                map2.put(m68Var, arrayList2);
                arrayList.addAll(arrayList2);
                map2.put(null, arrayList);
            }
            Comparator<Map.Entry<String, Long>> comparator3 = l68.c;
            Collections.sort(arrayList, l68.c);
        }

        public String a(long j, m68 m68Var) {
            Map<Long, String> map = this.a.get(m68Var);
            if (map != null) {
                return map.get(Long.valueOf(j));
            }
            return null;
        }
    }

    public static b b(Map<m68, Map<Long, String>> map) {
        map.put(m68.FULL_STANDALONE, map.get(m68.FULL));
        map.put(m68.SHORT_STANDALONE, map.get(m68.SHORT));
        m68 m68Var = m68.NARROW;
        if (map.containsKey(m68Var)) {
            m68 m68Var2 = m68.NARROW_STANDALONE;
            if (!map.containsKey(m68Var2)) {
                map.put(m68Var2, map.get(m68Var));
            }
        }
        return new b(map);
    }

    @Override // defpackage.f68
    public String a(y68 y68Var, long j, m68 m68Var, Locale locale) {
        AbstractMap.SimpleImmutableEntry simpleImmutableEntry;
        Object objB;
        l68 l68Var = this;
        AbstractMap.SimpleImmutableEntry simpleImmutableEntry2 = new AbstractMap.SimpleImmutableEntry(y68Var, locale);
        Object obj = l68Var.b.get(simpleImmutableEntry2);
        if (obj == null) {
            m68 m68Var2 = m68.NARROW;
            m68 m68Var3 = m68.SHORT;
            m68 m68Var4 = m68.FULL;
            if (y68Var == q68.F) {
                DateFormatSymbols dateFormatSymbols = DateFormatSymbols.getInstance(locale);
                HashMap map = new HashMap();
                simpleImmutableEntry = simpleImmutableEntry2;
                String[] months = dateFormatSymbols.getMonths();
                HashMap map2 = new HashMap();
                map2.put(1L, months[0]);
                map2.put(2L, months[1]);
                map2.put(3L, months[2]);
                map2.put(4L, months[3]);
                map2.put(5L, months[4]);
                map2.put(6L, months[5]);
                map2.put(7L, months[6]);
                map2.put(8L, months[7]);
                map2.put(9L, months[8]);
                map2.put(10L, months[9]);
                map2.put(11L, months[10]);
                map2.put(12L, months[11]);
                map.put(m68Var4, map2);
                HashMap map3 = new HashMap();
                l68Var = this;
                map3.put(1L, l68Var.d(1, months[0], locale));
                map3.put(2L, l68Var.d(2, months[1], locale));
                map3.put(3L, l68Var.d(3, months[2], locale));
                map3.put(4L, l68Var.d(4, months[3], locale));
                map3.put(5L, l68Var.d(5, months[4], locale));
                map3.put(6L, l68Var.d(6, months[5], locale));
                map3.put(7L, l68Var.d(7, months[6], locale));
                map3.put(8L, l68Var.d(8, months[7], locale));
                map3.put(9L, l68Var.d(9, months[8], locale));
                map3.put(10L, l68Var.d(10, months[9], locale));
                map3.put(11L, l68Var.d(11, months[10], locale));
                map3.put(12L, l68Var.d(12, months[11], locale));
                map.put(m68Var2, map3);
                String[] shortMonths = dateFormatSymbols.getShortMonths();
                HashMap map4 = new HashMap();
                map4.put(1L, shortMonths[0]);
                map4.put(2L, shortMonths[1]);
                map4.put(3L, shortMonths[2]);
                map4.put(4L, shortMonths[3]);
                map4.put(5L, shortMonths[4]);
                map4.put(6L, shortMonths[5]);
                map4.put(7L, shortMonths[6]);
                map4.put(8L, shortMonths[7]);
                map4.put(9L, shortMonths[8]);
                map4.put(10L, shortMonths[9]);
                map4.put(11L, shortMonths[10]);
                map4.put(12L, shortMonths[11]);
                map.put(m68Var3, map4);
                objB = b(map);
            } else {
                simpleImmutableEntry = simpleImmutableEntry2;
                if (y68Var == q68.x) {
                    DateFormatSymbols dateFormatSymbols2 = DateFormatSymbols.getInstance(locale);
                    HashMap map5 = new HashMap();
                    String[] weekdays = dateFormatSymbols2.getWeekdays();
                    HashMap map6 = new HashMap();
                    map6.put(1L, weekdays[2]);
                    map6.put(2L, weekdays[3]);
                    map6.put(3L, weekdays[4]);
                    map6.put(4L, weekdays[5]);
                    map6.put(5L, weekdays[6]);
                    map6.put(6L, weekdays[7]);
                    map6.put(7L, weekdays[1]);
                    map5.put(m68Var4, map6);
                    HashMap map7 = new HashMap();
                    map7.put(1L, l68Var.c(1, weekdays[2], locale));
                    map7.put(2L, l68Var.c(2, weekdays[3], locale));
                    map7.put(3L, l68Var.c(3, weekdays[4], locale));
                    map7.put(4L, l68Var.c(4, weekdays[5], locale));
                    map7.put(5L, l68Var.c(5, weekdays[6], locale));
                    map7.put(6L, l68Var.c(6, weekdays[7], locale));
                    map7.put(7L, l68Var.c(7, weekdays[1], locale));
                    map5.put(m68Var2, map7);
                    String[] shortWeekdays = dateFormatSymbols2.getShortWeekdays();
                    HashMap map8 = new HashMap();
                    map8.put(1L, shortWeekdays[2]);
                    map8.put(2L, shortWeekdays[3]);
                    map8.put(3L, shortWeekdays[4]);
                    map8.put(4L, shortWeekdays[5]);
                    map8.put(5L, shortWeekdays[6]);
                    map8.put(6L, shortWeekdays[7]);
                    map8.put(7L, shortWeekdays[1]);
                    map5.put(m68Var3, map8);
                    objB = b(map5);
                } else if (y68Var == q68.w) {
                    DateFormatSymbols dateFormatSymbols3 = DateFormatSymbols.getInstance(locale);
                    HashMap map9 = new HashMap();
                    String[] amPmStrings = dateFormatSymbols3.getAmPmStrings();
                    HashMap map10 = new HashMap();
                    map10.put(0L, amPmStrings[0]);
                    map10.put(1L, amPmStrings[1]);
                    map9.put(m68Var4, map10);
                    map9.put(m68Var3, map10);
                    objB = b(map9);
                } else if (y68Var == q68.J) {
                    DateFormatSymbols dateFormatSymbols4 = DateFormatSymbols.getInstance(locale);
                    HashMap map11 = new HashMap();
                    String[] eras = dateFormatSymbols4.getEras();
                    HashMap map12 = new HashMap();
                    map12.put(0L, eras[0]);
                    map12.put(1L, eras[1]);
                    map11.put(m68Var3, map12);
                    if (locale.getLanguage().equals(Locale.ENGLISH.getLanguage())) {
                        HashMap map13 = new HashMap();
                        map13.put(0L, "Before Christ");
                        map13.put(1L, "Anno Domini");
                        map11.put(m68Var4, map13);
                    } else {
                        map11.put(m68Var4, map12);
                    }
                    HashMap map14 = new HashMap();
                    map14.put(0L, eras[0].substring(0, 1));
                    map14.put(1L, eras[1].substring(0, 1));
                    map11.put(m68Var2, map14);
                    objB = b(map11);
                } else {
                    b78 b78Var = s68.a;
                    if (y68Var == s68.b.f) {
                        HashMap map15 = new HashMap();
                        HashMap map16 = new HashMap();
                        map16.put(1L, "Q1");
                        map16.put(2L, "Q2");
                        map16.put(3L, "Q3");
                        map16.put(4L, "Q4");
                        map15.put(m68Var3, map16);
                        HashMap map17 = new HashMap();
                        map17.put(1L, "1st quarter");
                        map17.put(2L, "2nd quarter");
                        map17.put(3L, "3rd quarter");
                        map17.put(4L, "4th quarter");
                        map15.put(m68Var4, map17);
                        objB = b(map15);
                    } else {
                        objB = "";
                    }
                }
            }
            AbstractMap.SimpleImmutableEntry simpleImmutableEntry3 = simpleImmutableEntry;
            l68Var.b.putIfAbsent(simpleImmutableEntry3, objB);
            obj = l68Var.b.get(simpleImmutableEntry3);
        }
        if (obj instanceof b) {
            return ((b) obj).a(j, m68Var);
        }
        return null;
    }

    public final String c(int i, String str, Locale locale) {
        if (locale.getLanguage().equals("zh") && locale.getCountry().equals("CN")) {
            switch (i) {
                case 1:
                    return "一";
                case 2:
                    return "二";
                case 3:
                    return "三";
                case 4:
                    return "四";
                case 5:
                    return "五";
                case 6:
                    return "六";
                case 7:
                    return "日";
            }
        }
        if (locale.getLanguage().equals("ar")) {
            switch (i) {
                case 1:
                    return "ن";
                case 2:
                    return "ث";
                case 3:
                    return "ر";
                case 4:
                    return "خ";
                case 5:
                    return "ج";
                case 6:
                    return "س";
                case 7:
                    return "ح";
            }
        }
        return str.substring(0, 1);
    }

    public final String d(int i, String str, Locale locale) {
        if (locale.getLanguage().equals("zh") && locale.getCountry().equals("CN")) {
            switch (i) {
                case 1:
                    return "一";
                case 2:
                    return "二";
                case 3:
                    return "三";
                case 4:
                    return "四";
                case 5:
                    return "五";
                case 6:
                    return "六";
                case 7:
                    return "七";
                case 8:
                    return "八";
                case 9:
                    return "九";
                case 10:
                    return "十";
                case 11:
                    return "十一";
                case 12:
                    return "十二";
            }
        }
        if (locale.getLanguage().equals("ar")) {
            switch (i) {
                case 1:
                    return "ي";
                case 2:
                    return "ف";
                case 3:
                    return "م";
                case 4:
                    return "أ";
                case 5:
                    return "و";
                case 6:
                    return "ن";
                case 7:
                    return "ل";
                case 8:
                    return "غ";
                case 9:
                    return "س";
                case 10:
                    return "ك";
                case 11:
                    return "ب";
                case 12:
                    return "د";
            }
        }
        return (locale.getLanguage().equals("ja") && locale.getCountry().equals("JP")) ? Integer.toString(i) : str.substring(0, 1);
    }
}
