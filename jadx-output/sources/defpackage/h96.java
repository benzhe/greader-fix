package defpackage;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public class h96 {
    public final String a;
    public final Bitmap b = null;

    public h96(String str, Bitmap bitmap) {
        this.a = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h96)) {
            return false;
        }
        h96 h96Var = (h96) obj;
        return hashCode() == h96Var.hashCode() && this.a.equals(h96Var.a);
    }

    public int hashCode() {
        Bitmap bitmap = this.b;
        return this.a.hashCode() + (bitmap != null ? bitmap.hashCode() : 0);
    }
}
