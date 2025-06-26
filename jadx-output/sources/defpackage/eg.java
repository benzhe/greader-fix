package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public class eg {
    public final b a;
    public a b = new a();

    public static class a {
        public int a = 0;
        public int b;
        public int c;
        public int d;
        public int e;

        public boolean a() {
            int i = this.a;
            if ((i & 7) != 0 && (i & (b(this.d, this.b) << 0)) == 0) {
                return false;
            }
            int i2 = this.a;
            if ((i2 & 112) != 0 && (i2 & (b(this.d, this.c) << 4)) == 0) {
                return false;
            }
            int i3 = this.a;
            if ((i3 & 1792) != 0 && (i3 & (b(this.e, this.b) << 8)) == 0) {
                return false;
            }
            int i4 = this.a;
            return (i4 & 28672) == 0 || (i4 & (b(this.e, this.c) << 12)) != 0;
        }

        public int b(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }
    }

    public interface b {
        int a(View view);

        int b();

        int c();

        View d(int i);

        int e(View view);
    }

    public eg(b bVar) {
        this.a = bVar;
    }

    public View a(int i, int i2, int i3, int i4) {
        int iB = this.a.b();
        int iC = this.a.c();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View viewD = this.a.d(i);
            int iA = this.a.a(viewD);
            int iE = this.a.e(viewD);
            a aVar = this.b;
            aVar.b = iB;
            aVar.c = iC;
            aVar.d = iA;
            aVar.e = iE;
            if (i3 != 0) {
                aVar.a = 0;
                aVar.a = i3 | 0;
                if (aVar.a()) {
                    return viewD;
                }
            }
            if (i4 != 0) {
                a aVar2 = this.b;
                aVar2.a = 0;
                aVar2.a = i4 | 0;
                if (aVar2.a()) {
                    view = viewD;
                }
            }
            i += i5;
        }
        return view;
    }

    public boolean b(View view, int i) {
        a aVar = this.b;
        int iB = this.a.b();
        int iC = this.a.c();
        int iA = this.a.a(view);
        int iE = this.a.e(view);
        aVar.b = iB;
        aVar.c = iC;
        aVar.d = iA;
        aVar.e = iE;
        if (i == 0) {
            return false;
        }
        a aVar2 = this.b;
        aVar2.a = 0;
        aVar2.a = 0 | i;
        return aVar2.a();
    }
}
