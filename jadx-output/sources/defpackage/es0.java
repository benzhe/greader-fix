package defpackage;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public final /* synthetic */ class es0 implements gs0 {
    public final byte[] a;

    public es0(byte[] bArr) {
        this.a = bArr;
    }

    @Override // defpackage.gs0
    public final void a(JsonWriter jsonWriter) throws NoSuchAlgorithmException, IOException {
        byte[] bArr = this.a;
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String strEncodeToString = Base64.encodeToString(bArr, 0);
        if (length < 10000) {
            jsonWriter.name("body").value(strEncodeToString);
        } else {
            String strL = zr0.l(strEncodeToString);
            if (strL != null) {
                jsonWriter.name("bodydigest").value(strL);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }
}
