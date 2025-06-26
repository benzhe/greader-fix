package defpackage;

import android.net.Uri;

/* loaded from: classes.dex */
public final class z64 {
    public final Uri a;

    public z64(Uri uri) {
        this.a = uri;
    }

    public final b74<Long> a(String str, long j) {
        return new v64(this, str, Long.valueOf(j));
    }

    public final b74<Boolean> b(String str, boolean z) {
        return new w64(this, str, Boolean.valueOf(z));
    }
}
