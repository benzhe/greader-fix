package defpackage;

import okhttp3.internal.http2.Settings;

/* loaded from: classes.dex */
public final class o84 {
    public final Object a;
    public final int b;

    public o84(Object obj, int i) {
        this.a = obj;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof o84)) {
            return false;
        }
        o84 o84Var = (o84) obj;
        return this.a == o84Var.a && this.b == o84Var.b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.b;
    }
}
