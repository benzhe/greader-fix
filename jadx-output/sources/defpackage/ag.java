package defpackage;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.ef;

/* loaded from: classes.dex */
public class ag implements ef.a {
    public final /* synthetic */ RecyclerView a;

    public ag(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public void a(ef.b bVar) {
        int i = bVar.a;
        if (i == 1) {
            RecyclerView recyclerView = this.a;
            recyclerView.q.p0(recyclerView, bVar.b, bVar.d);
            return;
        }
        if (i == 2) {
            RecyclerView recyclerView2 = this.a;
            recyclerView2.q.s0(recyclerView2, bVar.b, bVar.d);
        } else if (i == 4) {
            RecyclerView recyclerView3 = this.a;
            recyclerView3.q.u0(recyclerView3, bVar.b, bVar.d, bVar.c);
        } else {
            if (i != 8) {
                return;
            }
            RecyclerView recyclerView4 = this.a;
            recyclerView4.q.r0(recyclerView4, bVar.b, bVar.d, 1);
        }
    }

    public RecyclerView.a0 b(int i) {
        RecyclerView recyclerView = this.a;
        int iH = recyclerView.i.h();
        int i2 = 0;
        RecyclerView.a0 a0Var = null;
        while (true) {
            if (i2 >= iH) {
                break;
            }
            RecyclerView.a0 a0VarK = RecyclerView.K(recyclerView.i.g(i2));
            if (a0VarK != null && !a0VarK.isRemoved() && a0VarK.mPosition == i) {
                if (!recyclerView.i.k(a0VarK.itemView)) {
                    a0Var = a0VarK;
                    break;
                }
                a0Var = a0VarK;
            }
            i2++;
        }
        if (a0Var == null || this.a.i.k(a0Var.itemView)) {
            return null;
        }
        return a0Var;
    }

    public void c(int i, int i2, Object obj) {
        int i3;
        int i4;
        RecyclerView recyclerView = this.a;
        int iH = recyclerView.i.h();
        int i5 = i2 + i;
        for (int i6 = 0; i6 < iH; i6++) {
            View viewG = recyclerView.i.g(i6);
            RecyclerView.a0 a0VarK = RecyclerView.K(viewG);
            if (a0VarK != null && !a0VarK.shouldIgnore() && (i4 = a0VarK.mPosition) >= i && i4 < i5) {
                a0VarK.addFlags(2);
                a0VarK.addChangePayload(obj);
                ((RecyclerView.n) viewG.getLayoutParams()).c = true;
            }
        }
        RecyclerView.t tVar = recyclerView.f;
        int size = tVar.c.size();
        while (true) {
            size--;
            if (size < 0) {
                this.a.p0 = true;
                return;
            }
            RecyclerView.a0 a0Var = tVar.c.get(size);
            if (a0Var != null && (i3 = a0Var.mPosition) >= i && i3 < i5) {
                a0Var.addFlags(2);
                tVar.f(size);
            }
        }
    }

    public void d(int i, int i2) {
        RecyclerView recyclerView = this.a;
        int iH = recyclerView.i.h();
        for (int i3 = 0; i3 < iH; i3++) {
            RecyclerView.a0 a0VarK = RecyclerView.K(recyclerView.i.g(i3));
            if (a0VarK != null && !a0VarK.shouldIgnore() && a0VarK.mPosition >= i) {
                a0VarK.offsetPosition(i2, false);
                recyclerView.l0.f = true;
            }
        }
        RecyclerView.t tVar = recyclerView.f;
        int size = tVar.c.size();
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView.a0 a0Var = tVar.c.get(i4);
            if (a0Var != null && a0Var.mPosition >= i) {
                a0Var.offsetPosition(i2, true);
            }
        }
        recyclerView.requestLayout();
        this.a.o0 = true;
    }

    public void e(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        RecyclerView recyclerView = this.a;
        int iH = recyclerView.i.h();
        int i10 = -1;
        if (i < i2) {
            i4 = i;
            i3 = i2;
            i5 = -1;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i11 = 0; i11 < iH; i11++) {
            RecyclerView.a0 a0VarK = RecyclerView.K(recyclerView.i.g(i11));
            if (a0VarK != null && (i9 = a0VarK.mPosition) >= i4 && i9 <= i3) {
                if (i9 == i) {
                    a0VarK.offsetPosition(i2 - i, false);
                } else {
                    a0VarK.offsetPosition(i5, false);
                }
                recyclerView.l0.f = true;
            }
        }
        RecyclerView.t tVar = recyclerView.f;
        if (i < i2) {
            i7 = i;
            i6 = i2;
        } else {
            i6 = i;
            i7 = i2;
            i10 = 1;
        }
        int size = tVar.c.size();
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView.a0 a0Var = tVar.c.get(i12);
            if (a0Var != null && (i8 = a0Var.mPosition) >= i7 && i8 <= i6) {
                if (i8 == i) {
                    a0Var.offsetPosition(i2 - i, false);
                } else {
                    a0Var.offsetPosition(i10, false);
                }
            }
        }
        recyclerView.requestLayout();
        this.a.o0 = true;
    }
}
