package defpackage;

import android.util.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public final class ds0 {
    public static boolean c = false;
    public static boolean d = false;
    public final List<String> a;
    public static Object b = new Object();
    public static final Set<String> e = new HashSet(Arrays.asList(new String[0]));

    public ds0() {
        this(null);
    }

    public static boolean a() {
        boolean z;
        synchronized (b) {
            z = c && d;
        }
        return z;
    }

    public static void b(JsonWriter jsonWriter, Map<String, ?> map) throws IOException {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it.next();
            String key = next.getKey();
            if (!e.contains(key)) {
                if (!(next.getValue() instanceof List)) {
                    if (!(next.getValue() instanceof String)) {
                        is0.zzex("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name(InetAddressKeys.KEY_NAME).value(key);
                    jsonWriter.name("value").value((String) next.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str : (List) next.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name(InetAddressKeys.KEY_NAME).value(key);
                        jsonWriter.name("value").value(str);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    public final void c(String str, gs0 gs0Var) throws IOException {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(System.currentTimeMillis());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator<String> it = this.a.iterator();
            while (it.hasNext()) {
                jsonWriter.value(it.next());
            }
            jsonWriter.endArray();
            gs0Var.a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e2) {
            is0.zzc("unable to log", e2);
        }
        String string = stringWriter.toString();
        synchronized (ds0.class) {
            is0.zzey("GMA Debug BEGIN");
            int i = 0;
            while (i < string.length()) {
                int i2 = i + 4000;
                String strValueOf = String.valueOf(string.substring(i, Math.min(i2, string.length())));
                is0.zzey(strValueOf.length() != 0 ? "GMA Debug CONTENT ".concat(strValueOf) : new String("GMA Debug CONTENT "));
                i = i2;
            }
            is0.zzey("GMA Debug FINISH");
        }
    }

    public final void d(HttpURLConnection httpURLConnection, int i) throws IOException {
        if (a()) {
            String responseMessage = null;
            c("onNetworkResponse", new fs0(i, httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields())));
            if (i < 200 || i >= 300) {
                try {
                    responseMessage = httpURLConnection.getResponseMessage();
                } catch (IOException e2) {
                    String strValueOf = String.valueOf(e2.getMessage());
                    is0.zzez(strValueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(strValueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                }
                c("onNetworkRequestError", new hs0(responseMessage));
            }
        }
    }

    public final void e(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        if (a()) {
            c("onNetworkRequest", new cs0(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr));
        }
    }

    public final void f(String str) throws IOException {
        if (a() && str != null) {
            c("onNetworkResponseBody", new es0(str.getBytes()));
        }
    }

    public ds0(String str) {
        List<String> listAsList;
        if (a()) {
            String[] strArr = new String[1];
            String strValueOf = String.valueOf(UUID.randomUUID().toString());
            strArr[0] = strValueOf.length() != 0 ? "network_request_".concat(strValueOf) : new String("network_request_");
            listAsList = Arrays.asList(strArr);
        } else {
            listAsList = new ArrayList<>();
        }
        this.a = listAsList;
    }
}
