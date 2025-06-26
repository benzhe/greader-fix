package defpackage;

import android.graphics.Bitmap;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class cz6 implements bz6 {
    public final bz6 a;
    public final Comparator<String> b;

    public cz6(bz6 bz6Var, Comparator<String> comparator) {
        this.a = bz6Var;
        this.b = comparator;
    }

    @Override // defpackage.bz6
    public Bitmap a(String str) {
        return this.a.a(str);
    }

    @Override // defpackage.bz6
    public Collection<String> b() {
        return this.a.b();
    }

    @Override // defpackage.bz6
    public Bitmap c(String str) {
        return this.a.c(str);
    }

    @Override // defpackage.bz6
    public boolean d(String str, Bitmap bitmap) {
        synchronized (this.a) {
            String str2 = null;
            Iterator<String> it = this.a.b().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (this.b.compare(str, next) == 0) {
                    str2 = next;
                    break;
                }
            }
            if (str2 != null) {
                this.a.c(str2);
            }
        }
        return this.a.d(str, bitmap);
    }
}
