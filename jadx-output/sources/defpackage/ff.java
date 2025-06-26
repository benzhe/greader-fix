package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class ff {
    public final b a;
    public final a b = new a();
    public final List<View> c = new ArrayList();

    public static class a {
        public long a = 0;
        public a b;

        public void a(int i) {
            if (i < 64) {
                this.a &= ~(1 << i);
                return;
            }
            a aVar = this.b;
            if (aVar != null) {
                aVar.a(i - 64);
            }
        }

        public int b(int i) {
            a aVar = this.b;
            if (aVar == null) {
                return i >= 64 ? Long.bitCount(this.a) : Long.bitCount(this.a & ((1 << i) - 1));
            }
            if (i < 64) {
                return Long.bitCount(this.a & ((1 << i) - 1));
            }
            return Long.bitCount(this.a) + aVar.b(i - 64);
        }

        public final void c() {
            if (this.b == null) {
                this.b = new a();
            }
        }

        public boolean d(int i) {
            if (i < 64) {
                return (this.a & (1 << i)) != 0;
            }
            c();
            return this.b.d(i - 64);
        }

        public void e(int i, boolean z) {
            if (i >= 64) {
                c();
                this.b.e(i - 64, z);
                return;
            }
            long j = this.a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.a = ((j & (~j2)) << 1) | (j & j2);
            if (z) {
                h(i);
            } else {
                a(i);
            }
            if (z2 || this.b != null) {
                c();
                this.b.e(0, z2);
            }
        }

        public boolean f(int i) {
            if (i >= 64) {
                c();
                return this.b.f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (~j);
            this.a = j3;
            long j4 = j - 1;
            this.a = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            a aVar = this.b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.b.f(0);
            }
            return z;
        }

        public void g() {
            this.a = 0L;
            a aVar = this.b;
            if (aVar != null) {
                aVar.g();
            }
        }

        public void h(int i) {
            if (i < 64) {
                this.a |= 1 << i;
            } else {
                c();
                this.b.h(i - 64);
            }
        }

        public String toString() {
            if (this.b == null) {
                return Long.toBinaryString(this.a);
            }
            return this.b.toString() + "xx" + Long.toBinaryString(this.a);
        }
    }

    public interface b {
    }

    public ff(b bVar) {
        this.a = bVar;
    }

    public void a(View view, int i, boolean z) {
        int iB = i < 0 ? ((zf) this.a).b() : f(i);
        this.b.e(iB, z);
        if (z) {
            i(view);
        }
        zf zfVar = (zf) this.a;
        zfVar.a.addView(view, iB);
        RecyclerView recyclerView = zfVar.a;
        Objects.requireNonNull(recyclerView);
        RecyclerView.a0 a0VarK = RecyclerView.K(view);
        recyclerView.S();
        RecyclerView.e eVar = recyclerView.p;
        if (eVar != null && a0VarK != null) {
            eVar.onViewAttachedToWindow(a0VarK);
        }
        List<RecyclerView.o> list = recyclerView.G;
        if (list == null) {
            return;
        }
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                recyclerView.G.get(size).b(view);
            }
        }
    }

    public void b(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int iB = i < 0 ? ((zf) this.a).b() : f(i);
        this.b.e(iB, z);
        if (z) {
            i(view);
        }
        zf zfVar = (zf) this.a;
        Objects.requireNonNull(zfVar);
        RecyclerView.a0 a0VarK = RecyclerView.K(view);
        if (a0VarK != null) {
            if (!a0VarK.isTmpDetached() && !a0VarK.shouldIgnore()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Called attach on a child which is not detached: ");
                sb.append(a0VarK);
                throw new IllegalArgumentException(jo.e(zfVar.a, sb));
            }
            a0VarK.clearTmpDetachFlag();
        }
        zfVar.a.attachViewToParent(view, iB, layoutParams);
    }

    public void c(int i) {
        RecyclerView.a0 a0VarK;
        int iF = f(i);
        this.b.f(iF);
        zf zfVar = (zf) this.a;
        View childAt = zfVar.a.getChildAt(iF);
        if (childAt != null && (a0VarK = RecyclerView.K(childAt)) != null) {
            if (a0VarK.isTmpDetached() && !a0VarK.shouldIgnore()) {
                StringBuilder sb = new StringBuilder();
                sb.append("called detach on an already detached child ");
                sb.append(a0VarK);
                throw new IllegalArgumentException(jo.e(zfVar.a, sb));
            }
            a0VarK.addFlags(RecyclerView.a0.FLAG_TMP_DETACHED);
        }
        zfVar.a.detachViewFromParent(iF);
    }

    public View d(int i) {
        return ((zf) this.a).a(f(i));
    }

    public int e() {
        return ((zf) this.a).b() - this.c.size();
    }

    public final int f(int i) {
        if (i < 0) {
            return -1;
        }
        int iB = ((zf) this.a).b();
        int i2 = i;
        while (i2 < iB) {
            int iB2 = i - (i2 - this.b.b(i2));
            if (iB2 == 0) {
                while (this.b.d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iB2;
        }
        return -1;
    }

    public View g(int i) {
        return ((zf) this.a).a.getChildAt(i);
    }

    public int h() {
        return ((zf) this.a).b();
    }

    public final void i(View view) {
        this.c.add(view);
        zf zfVar = (zf) this.a;
        Objects.requireNonNull(zfVar);
        RecyclerView.a0 a0VarK = RecyclerView.K(view);
        if (a0VarK != null) {
            a0VarK.onEnteredHiddenState(zfVar.a);
        }
    }

    public int j(View view) {
        int iIndexOfChild = ((zf) this.a).a.indexOfChild(view);
        if (iIndexOfChild == -1 || this.b.d(iIndexOfChild)) {
            return -1;
        }
        return iIndexOfChild - this.b.b(iIndexOfChild);
    }

    public boolean k(View view) {
        return this.c.contains(view);
    }

    public final boolean l(View view) {
        if (!this.c.remove(view)) {
            return false;
        }
        zf zfVar = (zf) this.a;
        Objects.requireNonNull(zfVar);
        RecyclerView.a0 a0VarK = RecyclerView.K(view);
        if (a0VarK == null) {
            return true;
        }
        a0VarK.onLeftHiddenState(zfVar.a);
        return true;
    }

    public String toString() {
        return this.b.toString() + ", hidden list:" + this.c.size();
    }
}
