package defpackage;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* loaded from: classes.dex */
public final class dj extends ViewPager2.g {
    public final LinearLayoutManager a;
    public ViewPager2.i b;

    public dj(LinearLayoutManager linearLayoutManager) {
        this.a = linearLayoutManager;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.g
    public void a(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.g
    public void b(int i, float f, int i2) {
        if (this.b == null) {
            return;
        }
        float f2 = -f;
        for (int i3 = 0; i3 < this.a.y(); i3++) {
            View viewX = this.a.x(i3);
            if (viewX == null) {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i3), Integer.valueOf(this.a.y())));
            }
            this.b.a(viewX, (this.a.R(viewX) - i) + f2);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.g
    public void c(int i) {
    }
}
