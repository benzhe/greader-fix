package defpackage;

import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class bj extends ViewPager2.g {
    public final List<ViewPager2.g> a;

    public bj(int i) {
        this.a = new ArrayList(i);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.g
    public void a(int i) {
        try {
            Iterator<ViewPager2.g> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().a(i);
            }
        } catch (ConcurrentModificationException e) {
            d(e);
            throw null;
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.g
    public void b(int i, float f, int i2) {
        try {
            Iterator<ViewPager2.g> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().b(i, f, i2);
            }
        } catch (ConcurrentModificationException e) {
            d(e);
            throw null;
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.g
    public void c(int i) {
        try {
            Iterator<ViewPager2.g> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().c(i);
            }
        } catch (ConcurrentModificationException e) {
            d(e);
            throw null;
        }
    }

    public final void d(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }
}
