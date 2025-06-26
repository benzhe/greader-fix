package defpackage;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class cs0 implements gs0 {
    public final String a;
    public final String b;
    public final Map c;
    public final byte[] d;

    public cs0(String str, String str2, Map map, byte[] bArr) {
        this.a = str;
        this.b = str2;
        this.c = map;
        this.d = bArr;
    }

    @Override // defpackage.gs0
    public final void a(JsonWriter jsonWriter) throws IOException {
        String str = this.a;
        String str2 = this.b;
        Map map = this.c;
        byte[] bArr = this.d;
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        ds0.b(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(Base64.encodeToString(bArr, 0));
        }
        jsonWriter.endObject();
    }
}
