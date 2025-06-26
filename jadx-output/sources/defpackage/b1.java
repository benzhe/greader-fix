package defpackage;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class b1 {
    public Interpolator c;
    public na d;
    public boolean e;
    public long b = -1;
    public final oa f = new a();
    public final ArrayList<ma> a = new ArrayList<>();

    public class a extends oa {
        public boolean a = false;
        public int b = 0;

        public a() {
        }

        @Override // defpackage.na
        public void b(View view) {
            int i = this.b + 1;
            this.b = i;
            if (i == b1.this.a.size()) {
                na naVar = b1.this.d;
                if (naVar != null) {
                    naVar.b(null);
                }
                this.b = 0;
                this.a = false;
                b1.this.e = false;
            }
        }

        @Override // defpackage.oa, defpackage.na
        public void c(View view) {
            if (this.a) {
                return;
            }
            this.a = true;
            na naVar = b1.this.d;
            if (naVar != null) {
                naVar.c(null);
            }
        }
    }

    public void a() {
        if (this.e) {
            Iterator<ma> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.e = false;
        }
    }

    public void b() {
        View view;
        if (this.e) {
            return;
        }
        Iterator<ma> it = this.a.iterator();
        while (it.hasNext()) {
            ma next = it.next();
            long j = this.b;
            if (j >= 0) {
                next.c(j);
            }
            Interpolator interpolator = this.c;
            if (interpolator != null && (view = next.a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.d != null) {
                next.d(this.f);
            }
            View view2 = next.a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.e = true;
    }
}
