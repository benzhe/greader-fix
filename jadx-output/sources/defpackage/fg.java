package defpackage;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class fg {
    public final m4<RecyclerView.a0, a> a = new m4<>();
    public final j4<RecyclerView.a0> b = new j4<>();

    public static class a {
        public static t9<a> d = new t9<>(20);
        public int a;
        public RecyclerView.j.c b;
        public RecyclerView.j.c c;

        public static a a() {
            a aVarA = d.a();
            return aVarA == null ? new a() : aVarA;
        }

        public static void b(a aVar) {
            aVar.a = 0;
            aVar.b = null;
            aVar.c = null;
            d.b(aVar);
        }
    }

    public interface b {
    }

    public void a(RecyclerView.a0 a0Var) {
        a orDefault = this.a.getOrDefault(a0Var, null);
        if (orDefault == null) {
            orDefault = a.a();
            this.a.put(a0Var, orDefault);
        }
        orDefault.a |= 1;
    }

    public void b(RecyclerView.a0 a0Var, RecyclerView.j.c cVar) {
        a orDefault = this.a.getOrDefault(a0Var, null);
        if (orDefault == null) {
            orDefault = a.a();
            this.a.put(a0Var, orDefault);
        }
        orDefault.c = cVar;
        orDefault.a |= 8;
    }

    public void c(RecyclerView.a0 a0Var, RecyclerView.j.c cVar) {
        a orDefault = this.a.getOrDefault(a0Var, null);
        if (orDefault == null) {
            orDefault = a.a();
            this.a.put(a0Var, orDefault);
        }
        orDefault.b = cVar;
        orDefault.a |= 4;
    }

    public boolean d(RecyclerView.a0 a0Var) {
        a orDefault = this.a.getOrDefault(a0Var, null);
        return (orDefault == null || (orDefault.a & 1) == 0) ? false : true;
    }

    public final RecyclerView.j.c e(RecyclerView.a0 a0Var, int i) {
        a aVarK;
        RecyclerView.j.c cVar;
        int iE = this.a.e(a0Var);
        if (iE >= 0 && (aVarK = this.a.k(iE)) != null) {
            int i2 = aVarK.a;
            if ((i2 & i) != 0) {
                int i3 = (~i) & i2;
                aVarK.a = i3;
                if (i == 4) {
                    cVar = aVarK.b;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = aVarK.c;
                }
                if ((i3 & 12) == 0) {
                    this.a.i(iE);
                    a.b(aVarK);
                }
                return cVar;
            }
        }
        return null;
    }

    public void f(RecyclerView.a0 a0Var) {
        a orDefault = this.a.getOrDefault(a0Var, null);
        if (orDefault == null) {
            return;
        }
        orDefault.a &= -2;
    }

    public void g(RecyclerView.a0 a0Var) {
        int iK = this.b.k() - 1;
        while (true) {
            if (iK < 0) {
                break;
            }
            if (a0Var == this.b.l(iK)) {
                j4<RecyclerView.a0> j4Var = this.b;
                Object[] objArr = j4Var.g;
                Object obj = objArr[iK];
                Object obj2 = j4.i;
                if (obj != obj2) {
                    objArr[iK] = obj2;
                    j4Var.e = true;
                }
            } else {
                iK--;
            }
        }
        a aVarRemove = this.a.remove(a0Var);
        if (aVarRemove != null) {
            a.b(aVarRemove);
        }
    }
}
