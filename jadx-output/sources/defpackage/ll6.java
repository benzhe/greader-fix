package defpackage;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class ll6 extends m78 {
    public final Context c;
    public final String d;

    public ll6(Context context, String str) {
        this.c = context;
        this.d = str;
    }

    @Override // defpackage.m78
    public void a() throws IOException {
        InputStream inputStreamOpen = null;
        try {
            try {
                inputStreamOpen = this.c.getAssets().open(this.d);
                h78 h78Var = new h78(inputStreamOpen);
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (IOException unused) {
                    }
                }
                n78.d(h78Var);
            } catch (IOException e) {
                throw new IllegalStateException(this.d + " missing from assets", e);
            }
        } catch (Throwable th) {
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }
}
