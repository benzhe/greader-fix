package defpackage;

import java.util.List;

/* loaded from: classes2.dex */
public final class ox6 {
    public final boolean a;
    public final boolean b;
    public List<String> c;

    public static final class a {
        public boolean a;
        public boolean b;
        public List<String> c;
        public boolean d;

        public final ox6 a() {
            return new ox6(this, null);
        }

        public final a b(List<String> list) {
            this.b = true;
            this.c = list;
            return this;
        }
    }

    public ox6(a aVar, gm7 gm7Var) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
    }
}
