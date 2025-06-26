package defpackage;

import android.content.Context;
import java.io.File;

/* loaded from: classes.dex */
public final class h31 implements wq0 {
    public File a = null;
    public final /* synthetic */ Context b;

    public h31(Context context) {
        this.b = context;
    }

    @Override // defpackage.wq0
    public final File o() {
        if (this.a == null) {
            this.a = new File(this.b.getCacheDir(), "volley");
        }
        return this.a;
    }
}
