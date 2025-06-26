package defpackage;

import android.util.JsonReader;
import defpackage.ok5;
import defpackage.tk5;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public class cl5 {
    public static final un5 a;

    public interface a<T> {
        T a(JsonReader jsonReader) throws IOException;
    }

    static {
        io5 io5Var = new io5();
        ((yj5) yj5.a).a(io5Var);
        io5Var.d = true;
        a = new ho5(io5Var);
    }

    public static <T> uk5<T> a(JsonReader jsonReader, a<T> aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(aVar.a(jsonReader));
        }
        jsonReader.endArray();
        return new uk5<>(arrayList);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0113  */
    /* JADX WARN: Type inference failed for: r2v1, types: [qk5$a] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static tk5.d.AbstractC0042d b(android.util.JsonReader r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cl5.b(android.util.JsonReader):tk5$d$d");
    }

    public static tk5.d.AbstractC0042d.a.b.AbstractC0045b c(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        Integer numValueOf = null;
        String strNextString = null;
        String strNextString2 = null;
        uk5 uk5VarA = null;
        tk5.d.AbstractC0042d.a.b.AbstractC0045b abstractC0045bC = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            strNextName.hashCode();
            switch (strNextName) {
                case "frames":
                    uk5VarA = a(jsonReader, new a() { // from class: al5
                        @Override // cl5.a
                        public Object a(JsonReader jsonReader2) {
                            return cl5.d(jsonReader2);
                        }
                    });
                    break;
                case "reason":
                    strNextString2 = jsonReader.nextString();
                    break;
                case "type":
                    strNextString = jsonReader.nextString();
                    Objects.requireNonNull(strNextString, "Null type");
                    break;
                case "causedBy":
                    abstractC0045bC = c(jsonReader);
                    break;
                case "overflowCount":
                    numValueOf = Integer.valueOf(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        String strN = strNextString == null ? " type" : "";
        if (uk5VarA == null) {
            strN = jo.n(strN, " frames");
        }
        if (numValueOf == null) {
            strN = jo.n(strN, " overflowCount");
        }
        if (strN.isEmpty()) {
            return new lk5(strNextString, strNextString2, uk5VarA, abstractC0045bC, numValueOf.intValue(), null);
        }
        throw new IllegalStateException(jo.n("Missing required properties:", strN));
    }

    public static tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a d(JsonReader jsonReader) throws IOException {
        ok5.b bVar = new ok5.b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "offset":
                    bVar.d = Long.valueOf(jsonReader.nextLong());
                    break;
                case "symbol":
                    String strNextString = jsonReader.nextString();
                    Objects.requireNonNull(strNextString, "Null symbol");
                    bVar.b = strNextString;
                    break;
                case "pc":
                    bVar.a = Long.valueOf(jsonReader.nextLong());
                    break;
                case "file":
                    bVar.c = jsonReader.nextString();
                    break;
                case "importance":
                    bVar.e = Integer.valueOf(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return bVar.a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:149:0x021a A[PHI: r17
      0x021a: PHI (r17v15 java.lang.String) = (r17v10 java.lang.String), (r17v11 java.lang.String), (r17v12 java.lang.String), (r17v16 java.lang.String) binds: [B:146:0x0215, B:142:0x020a, B:138:0x01fd, B:123:0x01d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.tk5 e(android.util.JsonReader r31) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cl5.e(android.util.JsonReader):tk5");
    }

    public tk5 f(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                tk5 tk5VarE = e(jsonReader);
                jsonReader.close();
                return tk5VarE;
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    public String g(tk5 tk5Var) {
        ho5 ho5Var = (ho5) a;
        Objects.requireNonNull(ho5Var);
        StringWriter stringWriter = new StringWriter();
        try {
            ho5Var.a(tk5Var, stringWriter);
        } catch (IOException unused) {
        }
        return stringWriter.toString();
    }
}
