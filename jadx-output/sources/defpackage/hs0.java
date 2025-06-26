package defpackage;

import android.util.JsonWriter;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class hs0 implements gs0 {
    public final String a;

    public hs0(String str) {
        this.a = str;
    }

    @Override // defpackage.gs0
    public final void a(JsonWriter jsonWriter) throws IOException {
        String str = this.a;
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }
}
