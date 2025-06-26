package defpackage;

import android.graphics.Rect;
import defpackage.fb;
import java.util.Comparator;

/* loaded from: classes.dex */
public class ib<T> implements Comparator<T> {
    public final Rect e = new Rect();
    public final Rect f = new Rect();
    public final boolean g;
    public final gb<T> h;

    public ib(boolean z, gb<T> gbVar) {
        this.g = z;
        this.h = gbVar;
    }

    @Override // java.util.Comparator
    public int compare(T t, T t2) {
        Rect rect = this.e;
        Rect rect2 = this.f;
        ((fb.a) this.h).a(t, rect);
        ((fb.a) this.h).a(t2, rect2);
        int i = rect.top;
        int i2 = rect2.top;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        int i3 = rect.left;
        int i4 = rect2.left;
        if (i3 < i4) {
            return this.g ? 1 : -1;
        }
        if (i3 > i4) {
            return this.g ? -1 : 1;
        }
        int i5 = rect.bottom;
        int i6 = rect2.bottom;
        if (i5 < i6) {
            return -1;
        }
        if (i5 > i6) {
            return 1;
        }
        int i7 = rect.right;
        int i8 = rect2.right;
        if (i7 < i8) {
            return this.g ? 1 : -1;
        }
        if (i7 > i8) {
            return this.g ? -1 : 1;
        }
        return 0;
    }
}
