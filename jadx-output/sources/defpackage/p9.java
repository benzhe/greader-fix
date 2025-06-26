package defpackage;

/* loaded from: classes.dex */
public final class p9 {
    public static final o9 a = new d(null, false);
    public static final o9 b = new d(null, true);
    public static final o9 c;
    public static final o9 d;

    public static class a implements b {
        public static final a a = new a();

        /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
        @Override // p9.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int a(java.lang.CharSequence r4, int r5, int r6) {
            /*
                r3 = this;
                int r6 = r6 + r5
                r0 = 2
                r1 = 2
            L3:
                if (r5 >= r6) goto L23
                if (r1 != r0) goto L23
                char r1 = r4.charAt(r5)
                byte r1 = java.lang.Character.getDirectionality(r1)
                o9 r2 = defpackage.p9.a
                r2 = 1
                if (r1 == 0) goto L1f
                if (r1 == r2) goto L1d
                if (r1 == r0) goto L1d
                switch(r1) {
                    case 14: goto L1f;
                    case 15: goto L1f;
                    case 16: goto L1d;
                    case 17: goto L1d;
                    default: goto L1b;
                }
            L1b:
                r1 = 2
                goto L20
            L1d:
                r1 = 0
                goto L20
            L1f:
                r1 = 1
            L20:
                int r5 = r5 + 1
                goto L3
            L23:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: p9.a.a(java.lang.CharSequence, int, int):int");
        }
    }

    public interface b {
        int a(CharSequence charSequence, int i, int i2);
    }

    public static abstract class c implements o9 {
        public final b a;

        public c(b bVar) {
            this.a = bVar;
        }

        public abstract boolean a();

        public boolean b(CharSequence charSequence, int i, int i2) {
            if (i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            b bVar = this.a;
            if (bVar == null) {
                return a();
            }
            int iA = bVar.a(charSequence, i, i2);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return a();
            }
            return false;
        }
    }

    public static class d extends c {
        public final boolean b;

        public d(b bVar, boolean z) {
            super(bVar);
            this.b = z;
        }

        @Override // p9.c
        public boolean a() {
            return this.b;
        }
    }

    static {
        a aVar = a.a;
        c = new d(aVar, false);
        d = new d(aVar, true);
    }
}
