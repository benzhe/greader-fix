package org.apache.commons.lang3.time;

import defpackage.jo;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.Validate;

/* loaded from: classes2.dex */
public class DateUtils {
    public static final long MILLIS_PER_DAY = 86400000;
    public static final long MILLIS_PER_HOUR = 3600000;
    public static final long MILLIS_PER_MINUTE = 60000;
    public static final long MILLIS_PER_SECOND = 1000;
    public static final int RANGE_MONTH_MONDAY = 6;
    public static final int RANGE_MONTH_SUNDAY = 5;
    public static final int RANGE_WEEK_CENTER = 4;
    public static final int RANGE_WEEK_MONDAY = 2;
    public static final int RANGE_WEEK_RELATIVE = 3;
    public static final int RANGE_WEEK_SUNDAY = 1;
    public static final int SEMI_MONTH = 1001;
    private static final int[][] fields = {new int[]{14}, new int[]{13}, new int[]{12}, new int[]{11, 10}, new int[]{5, 5, 9}, new int[]{2, 1001}, new int[]{1}, new int[]{0}};

    public static class DateIterator implements Iterator<Calendar> {
        private final Calendar endFinal;
        private final Calendar spot;

        public DateIterator(Calendar calendar, Calendar calendar2) {
            this.endFinal = calendar2;
            this.spot = calendar;
            calendar.add(5, -1);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.spot.before(this.endFinal);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public Calendar next() {
            if (this.spot.equals(this.endFinal)) {
                throw new NoSuchElementException();
            }
            this.spot.add(5, 1);
            return (Calendar) this.spot.clone();
        }
    }

    public enum ModifyType {
        TRUNCATE,
        ROUND,
        CEILING
    }

    private static Date add(Date date, int i, int i2) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(i, i2);
        return calendar.getTime();
    }

    public static Date addDays(Date date, int i) {
        return add(date, 5, i);
    }

    public static Date addHours(Date date, int i) {
        return add(date, 11, i);
    }

    public static Date addMilliseconds(Date date, int i) {
        return add(date, 14, i);
    }

    public static Date addMinutes(Date date, int i) {
        return add(date, 12, i);
    }

    public static Date addMonths(Date date, int i) {
        return add(date, 2, i);
    }

    public static Date addSeconds(Date date, int i) {
        return add(date, 13, i);
    }

    public static Date addWeeks(Date date, int i) {
        return add(date, 3, i);
    }

    public static Date addYears(Date date, int i) {
        return add(date, 1, i);
    }

    public static Date ceiling(Date date, int i) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        modify(calendar, i, ModifyType.CEILING);
        return calendar.getTime();
    }

    private static long getFragment(Date date, int i, TimeUnit timeUnit) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return getFragment(calendar, i, timeUnit);
    }

    public static long getFragmentInDays(Date date, int i) {
        return getFragment(date, i, TimeUnit.DAYS);
    }

    public static long getFragmentInHours(Date date, int i) {
        return getFragment(date, i, TimeUnit.HOURS);
    }

    public static long getFragmentInMilliseconds(Date date, int i) {
        return getFragment(date, i, TimeUnit.MILLISECONDS);
    }

    public static long getFragmentInMinutes(Date date, int i) {
        return getFragment(date, i, TimeUnit.MINUTES);
    }

    public static long getFragmentInSeconds(Date date, int i) {
        return getFragment(date, i, TimeUnit.SECONDS);
    }

    public static boolean isSameDay(Date date, Date date2) {
        if (date == null || date2 == null) {
            throw nullDateIllegalArgumentException();
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        return isSameDay(calendar, calendar2);
    }

    public static boolean isSameInstant(Date date, Date date2) {
        if (date == null || date2 == null) {
            throw nullDateIllegalArgumentException();
        }
        return date.getTime() == date2.getTime();
    }

    public static boolean isSameLocalTime(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw nullDateIllegalArgumentException();
        }
        return calendar.get(14) == calendar2.get(14) && calendar.get(13) == calendar2.get(13) && calendar.get(12) == calendar2.get(12) && calendar.get(11) == calendar2.get(11) && calendar.get(6) == calendar2.get(6) && calendar.get(1) == calendar2.get(1) && calendar.get(0) == calendar2.get(0) && calendar.getClass() == calendar2.getClass();
    }

    public static Iterator<Calendar> iterator(Date date, int i) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return iterator(calendar, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x00f0 A[PHI: r7
      0x00f0: PHI (r7v5 int) = (r7v3 int), (r7v19 int) binds: [B:76:0x00ee, B:68:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f2 A[PHI: r7
      0x00f2: PHI (r7v16 int) = (r7v3 int), (r7v19 int) binds: [B:76:0x00ee, B:68:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void modify(java.util.Calendar r17, int r18, org.apache.commons.lang3.time.DateUtils.ModifyType r19) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.time.DateUtils.modify(java.util.Calendar, int, org.apache.commons.lang3.time.DateUtils$ModifyType):void");
    }

    private static IllegalArgumentException nullDateIllegalArgumentException() {
        return new IllegalArgumentException("The date must not be null");
    }

    public static Date parseDate(String str, String... strArr) throws ParseException {
        return parseDate(str, null, strArr);
    }

    public static Date parseDateStrictly(String str, String... strArr) throws ParseException {
        return parseDateStrictly(str, null, strArr);
    }

    private static Date parseDateWithLeniency(String str, Locale locale, String[] strArr, boolean z) throws ParseException {
        if (str == null || strArr == null) {
            throw new IllegalArgumentException("Date and Patterns must not be null");
        }
        TimeZone timeZone = TimeZone.getDefault();
        if (locale == null) {
            locale = Locale.getDefault();
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        calendar.setLenient(z);
        for (String str2 : strArr) {
            FastDateParser fastDateParser = new FastDateParser(str2, timeZone, locale);
            calendar.clear();
            if (fastDateParser.parse(str, parsePosition, calendar) && parsePosition.getIndex() == str.length()) {
                return calendar.getTime();
            }
            parsePosition.setIndex(0);
        }
        throw new ParseException(jo.n("Unable to parse the date: ", str), -1);
    }

    public static Date round(Date date, int i) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        modify(calendar, i, ModifyType.ROUND);
        return calendar.getTime();
    }

    private static Date set(Date date, int i, int i2) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setLenient(false);
        calendar.setTime(date);
        calendar.set(i, i2);
        return calendar.getTime();
    }

    public static Date setDays(Date date, int i) {
        return set(date, 5, i);
    }

    public static Date setHours(Date date, int i) {
        return set(date, 11, i);
    }

    public static Date setMilliseconds(Date date, int i) {
        return set(date, 14, i);
    }

    public static Date setMinutes(Date date, int i) {
        return set(date, 12, i);
    }

    public static Date setMonths(Date date, int i) {
        return set(date, 2, i);
    }

    public static Date setSeconds(Date date, int i) {
        return set(date, 13, i);
    }

    public static Date setYears(Date date, int i) {
        return set(date, 1, i);
    }

    public static Calendar toCalendar(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }

    public static Date truncate(Date date, int i) {
        validateDateNotNull(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        modify(calendar, i, ModifyType.TRUNCATE);
        return calendar.getTime();
    }

    public static int truncatedCompareTo(Calendar calendar, Calendar calendar2, int i) {
        return truncate(calendar, i).compareTo(truncate(calendar2, i));
    }

    public static boolean truncatedEquals(Calendar calendar, Calendar calendar2, int i) {
        return truncatedCompareTo(calendar, calendar2, i) == 0;
    }

    private static void validateDateNotNull(Date date) {
        Validate.notNull(date, "The date must not be null", new Object[0]);
    }

    public static long getFragmentInDays(Calendar calendar, int i) {
        return getFragment(calendar, i, TimeUnit.DAYS);
    }

    public static long getFragmentInHours(Calendar calendar, int i) {
        return getFragment(calendar, i, TimeUnit.HOURS);
    }

    public static long getFragmentInMilliseconds(Calendar calendar, int i) {
        return getFragment(calendar, i, TimeUnit.MILLISECONDS);
    }

    public static long getFragmentInMinutes(Calendar calendar, int i) {
        return getFragment(calendar, i, TimeUnit.MINUTES);
    }

    public static long getFragmentInSeconds(Calendar calendar, int i) {
        return getFragment(calendar, i, TimeUnit.SECONDS);
    }

    public static Date parseDate(String str, Locale locale, String... strArr) throws ParseException {
        return parseDateWithLeniency(str, locale, strArr, true);
    }

    public static Date parseDateStrictly(String str, Locale locale, String... strArr) throws ParseException {
        return parseDateWithLeniency(str, locale, strArr, false);
    }

    public static boolean truncatedEquals(Date date, Date date2, int i) {
        return truncatedCompareTo(date, date2, i) == 0;
    }

    public static boolean isSameInstant(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw nullDateIllegalArgumentException();
        }
        return calendar.getTime().getTime() == calendar2.getTime().getTime();
    }

    public static Calendar toCalendar(Date date, TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.setTime(date);
        return calendar;
    }

    public static int truncatedCompareTo(Date date, Date date2, int i) {
        return truncate(date, i).compareTo(truncate(date2, i));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long getFragment(java.util.Calendar r10, int r11, java.util.concurrent.TimeUnit r12) {
        /*
            if (r10 == 0) goto L7c
            r0 = 0
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.DAYS
            r3 = 1
            if (r12 != r2) goto Lb
            r4 = 0
            goto Lc
        Lb:
            r4 = 1
        Lc:
            r5 = 6
            r6 = 5
            r7 = 2
            if (r11 == r3) goto L1f
            if (r11 == r7) goto L14
            goto L2a
        L14:
            int r8 = r10.get(r6)
            int r8 = r8 - r4
            long r8 = (long) r8
            long r8 = r12.convert(r8, r2)
            goto L29
        L1f:
            int r8 = r10.get(r5)
            int r8 = r8 - r4
            long r8 = (long) r8
            long r8 = r12.convert(r8, r2)
        L29:
            long r0 = r0 + r8
        L2a:
            if (r11 == r3) goto L43
            if (r11 == r7) goto L43
            if (r11 == r6) goto L43
            if (r11 == r5) goto L43
            switch(r11) {
                case 11: goto L51;
                case 12: goto L5f;
                case 13: goto L6d;
                case 14: goto L7b;
                default: goto L35;
            }
        L35:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "The fragment "
            java.lang.String r0 = " is not supported"
            java.lang.String r11 = defpackage.jo.h(r12, r11, r0)
            r10.<init>(r11)
            throw r10
        L43:
            r11 = 11
            int r11 = r10.get(r11)
            long r2 = (long) r11
            java.util.concurrent.TimeUnit r11 = java.util.concurrent.TimeUnit.HOURS
            long r2 = r12.convert(r2, r11)
            long r0 = r0 + r2
        L51:
            r11 = 12
            int r11 = r10.get(r11)
            long r2 = (long) r11
            java.util.concurrent.TimeUnit r11 = java.util.concurrent.TimeUnit.MINUTES
            long r2 = r12.convert(r2, r11)
            long r0 = r0 + r2
        L5f:
            r11 = 13
            int r11 = r10.get(r11)
            long r2 = (long) r11
            java.util.concurrent.TimeUnit r11 = java.util.concurrent.TimeUnit.SECONDS
            long r2 = r12.convert(r2, r11)
            long r0 = r0 + r2
        L6d:
            r11 = 14
            int r10 = r10.get(r11)
            long r10 = (long) r10
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MILLISECONDS
            long r10 = r12.convert(r10, r2)
            long r0 = r0 + r10
        L7b:
            return r0
        L7c:
            java.lang.IllegalArgumentException r10 = nullDateIllegalArgumentException()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.time.DateUtils.getFragment(java.util.Calendar, int, java.util.concurrent.TimeUnit):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0071 A[LOOP:0: B:31:0x006b->B:33:0x0071, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007b A[LOOP:1: B:34:0x0075->B:36:0x007b, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Iterator<java.util.Calendar> iterator(java.util.Calendar r8, int r9) {
        /*
            if (r8 == 0) goto L85
            r0 = -1
            r1 = 2
            r2 = 5
            r3 = 1
            r4 = 7
            switch(r9) {
                case 1: goto L2f;
                case 2: goto L2f;
                case 3: goto L2f;
                case 4: goto L2f;
                case 5: goto L18;
                case 6: goto L18;
                default: goto La;
            }
        La:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "The range style "
            java.lang.String r1 = " is not valid."
            java.lang.String r9 = defpackage.jo.h(r0, r9, r1)
            r8.<init>(r9)
            throw r8
        L18:
            java.util.Calendar r8 = truncate(r8, r1)
            java.lang.Object r5 = r8.clone()
            java.util.Calendar r5 = (java.util.Calendar) r5
            r5.add(r1, r3)
            r5.add(r2, r0)
            r6 = 6
            if (r9 != r6) goto L2c
            goto L5a
        L2c:
            r1 = 1
            r9 = 7
            goto L5b
        L2f:
            java.util.Calendar r5 = truncate(r8, r2)
            java.util.Calendar r6 = truncate(r8, r2)
            if (r9 == r1) goto L58
            r1 = 3
            if (r9 == r1) goto L4f
            r7 = 4
            if (r9 == r7) goto L42
            r9 = 7
            r1 = 1
            goto L55
        L42:
            int r9 = r8.get(r4)
            int r9 = r9 - r1
            int r8 = r8.get(r4)
            int r8 = r8 + r1
            r1 = r9
            r9 = r8
            goto L55
        L4f:
            int r1 = r8.get(r4)
            int r9 = r1 + (-1)
        L55:
            r8 = r5
            r5 = r6
            goto L5b
        L58:
            r8 = r5
            r5 = r6
        L5a:
            r9 = 1
        L5b:
            if (r1 >= r3) goto L5f
            int r1 = r1 + 7
        L5f:
            if (r1 <= r4) goto L63
            int r1 = r1 + (-7)
        L63:
            if (r9 >= r3) goto L67
            int r9 = r9 + 7
        L67:
            if (r9 <= r4) goto L6b
            int r9 = r9 + (-7)
        L6b:
            int r6 = r8.get(r4)
            if (r6 == r1) goto L75
            r8.add(r2, r0)
            goto L6b
        L75:
            int r0 = r5.get(r4)
            if (r0 == r9) goto L7f
            r5.add(r2, r3)
            goto L75
        L7f:
            org.apache.commons.lang3.time.DateUtils$DateIterator r9 = new org.apache.commons.lang3.time.DateUtils$DateIterator
            r9.<init>(r8, r5)
            return r9
        L85:
            java.lang.IllegalArgumentException r8 = nullDateIllegalArgumentException()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.time.DateUtils.iterator(java.util.Calendar, int):java.util.Iterator");
    }

    public static Calendar ceiling(Calendar calendar, int i) {
        if (calendar != null) {
            Calendar calendar2 = (Calendar) calendar.clone();
            modify(calendar2, i, ModifyType.CEILING);
            return calendar2;
        }
        throw nullDateIllegalArgumentException();
    }

    public static Calendar round(Calendar calendar, int i) {
        if (calendar != null) {
            Calendar calendar2 = (Calendar) calendar.clone();
            modify(calendar2, i, ModifyType.ROUND);
            return calendar2;
        }
        throw nullDateIllegalArgumentException();
    }

    public static Calendar truncate(Calendar calendar, int i) {
        if (calendar != null) {
            Calendar calendar2 = (Calendar) calendar.clone();
            modify(calendar2, i, ModifyType.TRUNCATE);
            return calendar2;
        }
        throw nullDateIllegalArgumentException();
    }

    public static boolean isSameDay(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw nullDateIllegalArgumentException();
        }
        return calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    public static Date ceiling(Object obj, int i) {
        if (obj != null) {
            if (obj instanceof Date) {
                return ceiling((Date) obj, i);
            }
            if (obj instanceof Calendar) {
                return ceiling((Calendar) obj, i).getTime();
            }
            StringBuilder sbZ = jo.z("Could not find ceiling of for type: ");
            sbZ.append(obj.getClass());
            throw new ClassCastException(sbZ.toString());
        }
        throw nullDateIllegalArgumentException();
    }

    public static Date round(Object obj, int i) {
        if (obj != null) {
            if (obj instanceof Date) {
                return round((Date) obj, i);
            }
            if (obj instanceof Calendar) {
                return round((Calendar) obj, i).getTime();
            }
            throw new ClassCastException("Could not round " + obj);
        }
        throw nullDateIllegalArgumentException();
    }

    public static Date truncate(Object obj, int i) {
        if (obj != null) {
            if (obj instanceof Date) {
                return truncate((Date) obj, i);
            }
            if (obj instanceof Calendar) {
                return truncate((Calendar) obj, i).getTime();
            }
            throw new ClassCastException("Could not truncate " + obj);
        }
        throw nullDateIllegalArgumentException();
    }

    public static Iterator<?> iterator(Object obj, int i) {
        if (obj != null) {
            if (obj instanceof Date) {
                return iterator((Date) obj, i);
            }
            if (obj instanceof Calendar) {
                return iterator((Calendar) obj, i);
            }
            throw new ClassCastException("Could not iterate based on " + obj);
        }
        throw nullDateIllegalArgumentException();
    }
}
