package defpackage;

import defpackage.dk5;
import defpackage.zj5;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class tk5 {
    public static final Charset a = Charset.forName("UTF-8");

    public static abstract class a {
        public abstract tk5 a();
    }

    public static abstract class b {
        public abstract String a();

        public abstract String b();
    }

    public static abstract class c {

        public static abstract class a {
            public abstract byte[] a();

            public abstract String b();
        }

        public abstract uk5<a> a();

        public abstract String b();
    }

    public static abstract class d {

        public static abstract class a {

            /* renamed from: tk5$d$a$a, reason: collision with other inner class name */
            public static abstract class AbstractC0041a {
                public abstract String a();
            }

            public abstract String a();

            public abstract String b();

            public abstract String c();

            public abstract String d();

            public abstract String e();

            public abstract AbstractC0041a f();

            public abstract String g();
        }

        public static abstract class b {
            public abstract d a();
        }

        public static abstract class c {

            public static abstract class a {
            }

            public abstract int a();

            public abstract int b();

            public abstract long c();

            public abstract String d();

            public abstract String e();

            public abstract String f();

            public abstract long g();

            public abstract int h();

            public abstract boolean i();
        }

        /* renamed from: tk5$d$d, reason: collision with other inner class name */
        public static abstract class AbstractC0042d {

            /* renamed from: tk5$d$d$a */
            public static abstract class a {

                /* renamed from: tk5$d$d$a$a, reason: collision with other inner class name */
                public static abstract class AbstractC0043a {
                }

                /* renamed from: tk5$d$d$a$b */
                public static abstract class b {

                    /* renamed from: tk5$d$d$a$b$a, reason: collision with other inner class name */
                    public static abstract class AbstractC0044a {
                        public abstract long a();

                        public abstract String b();

                        public abstract long c();

                        public abstract String d();
                    }

                    /* renamed from: tk5$d$d$a$b$b, reason: collision with other inner class name */
                    public static abstract class AbstractC0045b {
                        public abstract AbstractC0045b a();

                        public abstract uk5<AbstractC0046d.AbstractC0047a> b();

                        public abstract int c();

                        public abstract String d();

                        public abstract String e();
                    }

                    /* renamed from: tk5$d$d$a$b$c */
                    public static abstract class c {
                        public abstract long a();

                        public abstract String b();

                        public abstract String c();
                    }

                    /* renamed from: tk5$d$d$a$b$d, reason: collision with other inner class name */
                    public static abstract class AbstractC0046d {

                        /* renamed from: tk5$d$d$a$b$d$a, reason: collision with other inner class name */
                        public static abstract class AbstractC0047a {

                            /* renamed from: tk5$d$d$a$b$d$a$a, reason: collision with other inner class name */
                            public static abstract class AbstractC0048a {
                            }

                            public abstract String a();

                            public abstract int b();

                            public abstract long c();

                            public abstract long d();

                            public abstract String e();
                        }

                        public abstract uk5<AbstractC0047a> a();

                        public abstract int b();

                        public abstract String c();
                    }

                    public abstract uk5<AbstractC0044a> a();

                    public abstract AbstractC0045b b();

                    public abstract c c();

                    public abstract uk5<AbstractC0046d> d();
                }

                public abstract Boolean a();

                public abstract uk5<b> b();

                public abstract b c();

                public abstract int d();
            }

            /* renamed from: tk5$d$d$b */
            public static abstract class b {

                /* renamed from: tk5$d$d$b$a */
                public static abstract class a {
                }

                public abstract Double a();

                public abstract int b();

                public abstract long c();

                public abstract int d();

                public abstract long e();

                public abstract boolean f();
            }

            /* renamed from: tk5$d$d$c */
            public static abstract class c {
                public abstract String a();
            }

            public abstract a a();

            public abstract b b();

            public abstract c c();

            public abstract long d();

            public abstract String e();
        }

        public static abstract class e {
            public abstract String a();

            public abstract int b();

            public abstract String c();

            public abstract boolean d();
        }

        public static abstract class f {
            public abstract String a();
        }

        public abstract a a();

        public abstract c b();

        public abstract Long c();

        public abstract uk5<AbstractC0042d> d();

        public abstract String e();

        public abstract int f();

        public abstract String g();

        public abstract e h();

        public abstract long i();

        public abstract f j();

        public abstract boolean k();

        public abstract b l();
    }

    public enum e {
        INCOMPLETE,
        JAVA,
        NATIVE
    }

    public abstract String a();

    public abstract String b();

    public abstract String c();

    public abstract String d();

    public abstract c e();

    public abstract int f();

    public abstract String g();

    public abstract d h();

    public abstract a i();

    public tk5 j(long j, boolean z, String str) {
        a aVarI = i();
        d dVar = ((zj5) this).h;
        if (dVar != null) {
            d.b bVarL = dVar.l();
            dk5.b bVar = (dk5.b) bVarL;
            bVar.d = Long.valueOf(j);
            bVar.e = Boolean.valueOf(z);
            if (str != null) {
                bVar.g = new sk5(str, null);
                bVar.a();
            }
            ((zj5.b) aVarI).g = bVarL.a();
        }
        return aVarI.a();
    }
}
