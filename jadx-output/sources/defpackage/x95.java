package defpackage;

import android.graphics.Typeface;

/* loaded from: classes.dex */
public final class x95 extends aa5 {
    public final Typeface a;
    public final a b;
    public boolean c;

    public interface a {
        void a(Typeface typeface);
    }

    public x95(a aVar, Typeface typeface) {
        this.a = typeface;
        this.b = aVar;
    }

    @Override // defpackage.aa5
    public void a(int i) {
        Typeface typeface = this.a;
        if (this.c) {
            return;
        }
        this.b.a(typeface);
    }

    @Override // defpackage.aa5
    public void b(Typeface typeface, boolean z) {
        if (this.c) {
            return;
        }
        this.b.a(typeface);
    }
}
