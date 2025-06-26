package defpackage;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<java.lang.Character>] */
/* loaded from: classes.dex */
public abstract class jd5 {

    public static abstract class a extends jd5 {
    }

    public static abstract class b extends a {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        public final String toString() {
            return this.a;
        }
    }

    public static final class c extends b {
        public static final c b = new c();

        public c() {
            super("CharMatcher.none()");
        }
    }

    public static final class d extends b {
        public static final d b;

        static {
            Integer.numberOfLeadingZeros(31);
            b = new d();
        }

        public d() {
            super("CharMatcher.whitespace()");
        }
    }
}
