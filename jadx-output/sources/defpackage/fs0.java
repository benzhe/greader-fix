package defpackage;

import android.util.JsonWriter;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class fs0 implements gs0 {
    public final int a;
    public final Map b;

    public fs0(int i, Map map) {
        this.a = i;
        this.b = map;
    }

    @Override // defpackage.gs0
    public final void a(JsonWriter jsonWriter) throws IOException {
        int i = this.a;
        Map map = this.b;
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        ds0.b(jsonWriter, map);
        jsonWriter.endObject();
    }
}
