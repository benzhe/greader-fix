package defpackage;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes.dex */
public final class pu0 extends tj0 {
    public static List<br3> b(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new br3(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    public static void c(HttpURLConnection httpURLConnection, j40<?> j40Var) throws eh3, IOException {
        byte[] bArrZzg = j40Var.zzg();
        if (bArrZzg != null) {
            httpURLConnection.setDoOutput(true);
            if (!httpURLConnection.getRequestProperties().containsKey(HttpConnection.CONTENT_TYPE)) {
                httpURLConnection.setRequestProperty(HttpConnection.CONTENT_TYPE, "application/x-www-form-urlencoded; charset=".concat("UTF-8"));
            }
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(bArrZzg);
            dataOutputStream.close();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a8 A[Catch: all -> 0x00fd, TryCatch #1 {all -> 0x00fd, blocks: (B:3:0x0040, B:4:0x0048, B:6:0x004e, B:7:0x005e, B:8:0x0062, B:9:0x0065, B:42:0x00f7, B:43:0x00fc, B:10:0x0069, B:11:0x0072, B:12:0x0078, B:13:0x007e, B:14:0x0084, B:15:0x008a, B:16:0x0093, B:17:0x009c, B:18:0x00a1, B:20:0x00a8, B:33:0x00c4, B:40:0x00ef, B:41:0x00f6), top: B:50:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ef A[Catch: all -> 0x00fd, TRY_ENTER, TryCatch #1 {all -> 0x00fd, blocks: (B:3:0x0040, B:4:0x0048, B:6:0x004e, B:7:0x005e, B:8:0x0062, B:9:0x0065, B:42:0x00f7, B:43:0x00fc, B:10:0x0069, B:11:0x0072, B:12:0x0078, B:13:0x007e, B:14:0x0084, B:15:0x008a, B:16:0x0093, B:17:0x009c, B:18:0x00a1, B:20:0x00a8, B:33:0x00c4, B:40:0x00ef, B:41:0x00f6), top: B:50:0x0040 }] */
    @Override // defpackage.tj0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.ts0 a(defpackage.j40<?> r7, java.util.Map<java.lang.String, java.lang.String> r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pu0.a(j40, java.util.Map):ts0");
    }
}
