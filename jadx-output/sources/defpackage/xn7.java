package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class xn7 implements sn7<dn7> {
    public final CharSequence a;
    public final int b;
    public final int c;
    public final tl7<CharSequence, Integer, rj7<Integer, Integer>> d;

    public static final class a implements Iterator<dn7>, wm7 {
        public int e = -1;
        public int f;
        public int g;
        public dn7 h;
        public int i;

        public a() {
            int iA = en7.a(xn7.this.b, 0, xn7.this.a.length());
            this.f = iA;
            this.g = iA;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r7 = this;
                int r0 = r7.g
                r1 = 0
                if (r0 >= 0) goto Lc
                r7.e = r1
                r0 = 0
                r7.h = r0
                goto L82
            Lc:
                xn7 r2 = defpackage.xn7.this
                int r3 = r2.c
                r4 = -1
                r5 = 1
                if (r3 <= 0) goto L1b
                int r6 = r7.i
                int r6 = r6 + r5
                r7.i = r6
                if (r6 >= r3) goto L23
            L1b:
                java.lang.CharSequence r2 = r2.a
                int r2 = r2.length()
                if (r0 <= r2) goto L37
            L23:
                int r0 = r7.f
                dn7 r1 = new dn7
                xn7 r2 = defpackage.xn7.this
                java.lang.CharSequence r2 = r2.a
                int r2 = defpackage.co7.g(r2)
                r1.<init>(r0, r2)
                r7.h = r1
                r7.g = r4
                goto L80
            L37:
                xn7 r0 = defpackage.xn7.this
                tl7<java.lang.CharSequence, java.lang.Integer, rj7<java.lang.Integer, java.lang.Integer>> r2 = r0.d
                java.lang.CharSequence r0 = r0.a
                int r3 = r7.g
                java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
                java.lang.Object r0 = r2.b(r0, r3)
                rj7 r0 = (defpackage.rj7) r0
                if (r0 != 0) goto L5f
                int r0 = r7.f
                dn7 r1 = new dn7
                xn7 r2 = defpackage.xn7.this
                java.lang.CharSequence r2 = r2.a
                int r2 = defpackage.co7.g(r2)
                r1.<init>(r0, r2)
                r7.h = r1
                r7.g = r4
                goto L80
            L5f:
                A r2 = r0.e
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                B r0 = r0.f
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r3 = r7.f
                dn7 r3 = defpackage.en7.d(r3, r2)
                r7.h = r3
                int r2 = r2 + r0
                r7.f = r2
                if (r0 != 0) goto L7d
                r1 = 1
            L7d:
                int r2 = r2 + r1
                r7.g = r2
            L80:
                r7.e = r5
            L82:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: xn7.a.a():void");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.e == -1) {
                a();
            }
            return this.e == 1;
        }

        @Override // java.util.Iterator
        public dn7 next() {
            if (this.e == -1) {
                a();
            }
            if (this.e == 0) {
                throw new NoSuchElementException();
            }
            dn7 dn7Var = this.h;
            Objects.requireNonNull(dn7Var, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.h = null;
            this.e = -1;
            return dn7Var;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public xn7(CharSequence charSequence, int i, int i2, tl7<? super CharSequence, ? super Integer, rj7<Integer, Integer>> tl7Var) {
        im7.e(charSequence, "input");
        im7.e(tl7Var, "getNextMatch");
        this.a = charSequence;
        this.b = i;
        this.c = i2;
        this.d = tl7Var;
    }

    @Override // defpackage.sn7
    public Iterator<dn7> iterator() {
        return new a();
    }
}
