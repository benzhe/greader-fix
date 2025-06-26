package defpackage;

/* loaded from: classes.dex */
public interface yj {
    public static final b.c a = new b.c(null);
    public static final b.C0060b b = new b.C0060b(null);

    public static abstract class b {

        public static final class a extends b {
            public final Throwable a;

            public a(Throwable th) {
                this.a = th;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.a.getMessage());
            }
        }

        /* renamed from: yj$b$b, reason: collision with other inner class name */
        public static final class C0060b extends b {
            public C0060b(a aVar) {
            }

            public String toString() {
                return "IN_PROGRESS";
            }
        }

        public static final class c extends b {
            public c() {
            }

            public String toString() {
                return "SUCCESS";
            }

            public c(a aVar) {
            }
        }
    }
}
