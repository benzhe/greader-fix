package defpackage;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class xe5 {
    public static final String[] g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};
    public static final DateFormat h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
    public final String a;
    public final String b;
    public final String c;
    public final Date d;
    public final long e;
    public final long f;

    public xe5(String str, String str2, String str3, Date date, long j, long j2) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = date;
        this.e = j;
        this.f = j2;
    }

    public static xe5 a(Map<String, String> map) throws we5, NumberFormatException, ParseException {
        c(map);
        try {
            return new xe5(map.get("experimentId"), map.get("variantId"), map.containsKey("triggerEvent") ? map.get("triggerEvent") : "", h.parse(map.get("experimentStartTime")), Long.parseLong(map.get("triggerTimeoutMillis")), Long.parseLong(map.get("timeToLiveMillis")));
        } catch (NumberFormatException e) {
            throw new we5("Could not process experiment: one of the durations could not be converted into a long.", e);
        } catch (ParseException e2) {
            throw new we5("Could not process experiment: parsing experiment start time failed.", e2);
        }
    }

    public static void c(Map<String, String> map) throws we5 {
        ArrayList arrayList = new ArrayList();
        for (String str : g) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new we5(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }

    public Map<String, String> b() {
        HashMap map = new HashMap();
        map.put("experimentId", this.a);
        map.put("variantId", this.b);
        map.put("triggerEvent", this.c);
        map.put("experimentStartTime", h.format(this.d));
        map.put("triggerTimeoutMillis", Long.toString(this.e));
        map.put("timeToLiveMillis", Long.toString(this.f));
        return map;
    }
}
