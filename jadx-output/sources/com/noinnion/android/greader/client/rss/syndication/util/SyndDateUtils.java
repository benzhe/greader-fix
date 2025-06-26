package com.noinnion.android.greader.client.rss.syndication.util;

import android.util.Log;
import defpackage.jo;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes2.dex */
public class SyndDateUtils {
    public static final String RFC3339LOCAL = "yyyy-MM-dd'T'HH:mm:ssZ";
    public static final String RFC3339UTC = "yyyy-MM-dd'T'HH:mm:ss'Z'";
    private static final String TAG = "DateUtils";
    private static final String[] RFC822DATES = {"dd MMM yy HH:mm:ss Z"};
    private static ThreadLocal<SimpleDateFormat> RFC822Formatter = new ThreadLocal<SimpleDateFormat>() { // from class: com.noinnion.android.greader.client.rss.syndication.util.SyndDateUtils.1
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat(SyndDateUtils.RFC822DATES[0], Locale.US);
        }
    };
    private static ThreadLocal<SimpleDateFormat> RFC3339Formatter = new ThreadLocal<SimpleDateFormat>() { // from class: com.noinnion.android.greader.client.rss.syndication.util.SyndDateUtils.2
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat(SyndDateUtils.RFC3339UTC, Locale.US);
        }
    };

    public static String formatRFC3339Local(Date date) {
        SimpleDateFormat simpleDateFormat = RFC3339Formatter.get();
        simpleDateFormat.applyPattern(RFC3339LOCAL);
        String str = simpleDateFormat.format(date);
        simpleDateFormat.applyPattern(RFC3339UTC);
        return str;
    }

    public static String formatRFC3339UTC(Date date) {
        SimpleDateFormat simpleDateFormat = RFC3339Formatter.get();
        simpleDateFormat.applyPattern(RFC3339UTC);
        return simpleDateFormat.format(date);
    }

    public static String formatRFC822Date(Date date) {
        return RFC822Formatter.get().format(date);
    }

    public static Date parseRFC3339Date(String str) {
        SimpleDateFormat simpleDateFormat = RFC3339Formatter.get();
        boolean zEndsWith = str.endsWith("Z");
        if (str.contains(".")) {
            str = jo.n(str.substring(0, str.indexOf(".")), zEndsWith ? str.substring(str.length() - 1) : str.contains("+") ? str.substring(str.indexOf("+")) : str.substring(str.indexOf("-")));
        }
        if (zEndsWith) {
            try {
                return simpleDateFormat.parse(str);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        } else {
            simpleDateFormat.applyPattern(RFC3339LOCAL);
            StringBuilder sb = new StringBuilder(str.length() - 1);
            int iLastIndexOf = str.lastIndexOf(58);
            for (int i = 0; i < str.length(); i++) {
                if (i != iLastIndexOf) {
                    sb.append(str.charAt(i));
                }
            }
            try {
                return simpleDateFormat.parse(sb.toString());
            } catch (ParseException e2) {
                e2.printStackTrace();
                Log.e(TAG, "Unable to parse date");
            } finally {
                simpleDateFormat.applyPattern(RFC3339UTC);
            }
        }
        return null;
    }

    public static Date parseRFC822Date(String str) {
        Date date;
        if (str.contains("PDT")) {
            str = str.replace("PDT", "PST8PDT");
        }
        if (str.contains(",")) {
            str = str.substring(str.indexOf(",") + 1).trim();
        }
        SimpleDateFormat simpleDateFormat = RFC822Formatter.get();
        String[] strArr = RFC822DATES;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                date = null;
                break;
            }
            try {
                simpleDateFormat.applyPattern(strArr[i]);
                date = simpleDateFormat.parse(str);
                break;
            } catch (ParseException e) {
                e.printStackTrace();
                i++;
            }
        }
        if (date == null) {
            Log.e(TAG, "Unable to parse feed date correctly");
        }
        return date;
    }

    public static long parseTimeString(String str) {
        String[] strArrSplit = str.split(":");
        long jIntValue = 0;
        int i = 0;
        if (strArrSplit.length == 3) {
            jIntValue = 0 + (Integer.valueOf(strArrSplit[0]).intValue() * DateUtils.MILLIS_PER_HOUR);
            i = 1;
        }
        return (long) ((Float.valueOf(strArrSplit[i + 1]).floatValue() * 1000.0f) + (Integer.valueOf(strArrSplit[i]).intValue() * DateUtils.MILLIS_PER_MINUTE) + jIntValue);
    }
}
