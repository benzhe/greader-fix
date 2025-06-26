package defpackage;

import defpackage.ap;
import defpackage.vp;
import java.io.IOException;
import java.io.Reader;
import java.util.Objects;
import org.apache.commons.lang3.CharUtils;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public class tp extends gp {
    public static final int N = ap.a.ALLOW_TRAILING_COMMA.f;
    public static final int O = ap.a.ALLOW_NUMERIC_LEADING_ZEROS.f;
    public static final int P = ap.a.ALLOW_NON_NUMERIC_NUMBERS.f;
    public static final int Q = ap.a.ALLOW_MISSING_VALUES.f;
    public static final int R = ap.a.ALLOW_SINGLE_QUOTES.f;
    public static final int S = ap.a.ALLOW_UNQUOTED_FIELD_NAMES.f;
    public static final int T = ap.a.ALLOW_COMMENTS.f;
    public static final int U = ap.a.ALLOW_YAML_COMMENTS.f;
    public static final int[] V = kp.c;
    public Reader G;
    public char[] H;
    public boolean I;
    public final vp J;
    public final int K;
    public boolean L;
    public long M;

    public tp(lp lpVar, int i, Reader reader, cp cpVar, vp vpVar) {
        super(lpVar, i);
        this.G = reader;
        if (lpVar.d != null) {
            throw new IllegalStateException("Trying to call same allocXxx() method second time");
        }
        char[] cArrA = lpVar.c.a(0, 0);
        lpVar.d = cArrA;
        this.H = cArrA;
        this.o = 0;
        this.p = 0;
        this.J = vpVar;
        this.K = vpVar.c;
        this.I = true;
    }

    public void C0(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.o >= this.p && !p0()) {
                break;
            }
            char c = this.H[this.o];
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            this.o++;
            sb.append(c);
            if (sb.length() >= 256) {
                sb.append("...");
                break;
            }
        }
        throw new zo(this, String.format("Unrecognized token '%s': was expecting %s", sb, str2));
    }

    @Override // defpackage.gp
    public void F() throws IOException {
        if (this.G != null) {
            if (this.m.b || f(ap.a.AUTO_CLOSE_SOURCE)) {
                this.G.close();
            }
            this.G = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int F0() throws java.io.IOException {
        /*
            r3 = this;
        L0:
            int r0 = r3.o
            int r1 = r3.p
            if (r0 < r1) goto L2b
            boolean r0 = r3.p0()
            if (r0 == 0) goto Ld
            goto L2b
        Ld:
            java.lang.String r0 = "Unexpected end-of-input within/between "
            java.lang.StringBuilder r0 = defpackage.jo.z(r0)
            rp r1 = r3.v
            java.lang.String r1 = r1.f()
            r0.append(r1)
            java.lang.String r1 = " entries"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            zo r1 = new zo
            r1.<init>(r3, r0)
            throw r1
        L2b:
            char[] r0 = r3.H
            int r1 = r3.o
            int r2 = r1 + 1
            r3.o = r2
            char r0 = r0[r1]
            r1 = 32
            if (r0 <= r1) goto L4d
            r1 = 47
            if (r0 != r1) goto L41
            r3.M0()
            goto L0
        L41:
            r1 = 35
            if (r0 != r1) goto L4c
            boolean r1 = r3.P0()
            if (r1 == 0) goto L4c
            goto L0
        L4c:
            return r0
        L4d:
            if (r0 >= r1) goto L0
            r1 = 10
            if (r0 != r1) goto L5c
            int r0 = r3.r
            int r0 = r0 + 1
            r3.r = r0
            r3.s = r2
            goto L0
        L5c:
            r1 = 13
            if (r0 != r1) goto L64
            r3.K0()
            goto L0
        L64:
            r1 = 9
            if (r0 != r1) goto L69
            goto L0
        L69:
            r3.y(r0)
            r0 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tp.F0():int");
    }

    public final void K0() throws IOException {
        if (this.o < this.p || p0()) {
            char[] cArr = this.H;
            int i = this.o;
            if (cArr[i] == '\n') {
                this.o = i + 1;
            }
        }
        this.r++;
        this.s = this.o;
    }

    @Override // defpackage.gp
    public void L() throws IOException {
        char[] cArr;
        vp vpVar;
        char[] cArr2;
        aq aqVar = this.x;
        aqVar.c = -1;
        aqVar.i = 0;
        aqVar.d = 0;
        aqVar.b = null;
        aqVar.k = null;
        if (aqVar.f) {
            aqVar.b();
        }
        wp wpVar = aqVar.a;
        if (wpVar != null && (cArr2 = aqVar.h) != null) {
            aqVar.h = null;
            wpVar.a.set(2, cArr2);
        }
        vp vpVar2 = this.J;
        if ((!vpVar2.l) && (vpVar = vpVar2.a) != null && vpVar2.e) {
            vp.b bVar = new vp.b(vpVar2);
            int i = bVar.a;
            vp.b bVar2 = vpVar.b.get();
            if (i != bVar2.a) {
                if (i > 12000) {
                    bVar = new vp.b(0, 0, new String[64], new vp.a[32]);
                }
                vpVar.b.compareAndSet(bVar2, bVar);
            }
            vpVar2.l = true;
        }
        if (!this.I || (cArr = this.H) == null) {
            return;
        }
        this.H = null;
        lp lpVar = this.m;
        Objects.requireNonNull(lpVar);
        char[] cArr3 = lpVar.d;
        if (cArr != cArr3 && cArr.length < cArr3.length) {
            throw new IllegalArgumentException("Trying to release buffer smaller than original");
        }
        lpVar.d = null;
        lpVar.c.a.set(0, cArr);
    }

    public final int L0(boolean z) throws IOException {
        while (true) {
            if (this.o >= this.p && !p0()) {
                StringBuilder sbZ = jo.z(" within/between ");
                sbZ.append(this.v.f());
                sbZ.append(" entries");
                t(sbZ.toString(), null);
                throw null;
            }
            char[] cArr = this.H;
            int i = this.o;
            int i2 = i + 1;
            this.o = i2;
            char c = cArr[i];
            if (c > ' ') {
                if (c == '/') {
                    M0();
                } else if (c != '#' || !P0()) {
                    if (z) {
                        return c;
                    }
                    if (c != ':') {
                        x(c, "was expecting a colon to separate field name and value");
                        throw null;
                    }
                    z = true;
                }
            } else if (c >= ' ') {
                continue;
            } else if (c == '\n') {
                this.r++;
                this.s = i2;
            } else if (c == '\r') {
                K0();
            } else if (c != '\t') {
                y(c);
                throw null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0056, code lost:
    
        t(" in a comment", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0059, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M0() throws java.io.IOException {
        /*
            r7 = this;
            int r0 = r7.e
            int r1 = defpackage.tp.T
            r0 = r0 & r1
            r1 = 47
            r2 = 0
            if (r0 == 0) goto L8f
            int r0 = r7.o
            int r3 = r7.p
            java.lang.String r4 = " in a comment"
            if (r0 < r3) goto L1d
            boolean r0 = r7.p0()
            if (r0 == 0) goto L19
            goto L1d
        L19:
            r7.t(r4, r2)
            throw r2
        L1d:
            char[] r0 = r7.H
            int r3 = r7.o
            int r5 = r3 + 1
            r7.o = r5
            char r0 = r0[r3]
            if (r0 != r1) goto L2d
            r7.N0()
            goto L66
        L2d:
            r3 = 42
            if (r0 != r3) goto L89
        L31:
            int r0 = r7.o
            int r5 = r7.p
            if (r0 < r5) goto L3d
            boolean r0 = r7.p0()
            if (r0 == 0) goto L56
        L3d:
            char[] r0 = r7.H
            int r5 = r7.o
            int r6 = r5 + 1
            r7.o = r6
            char r0 = r0[r5]
            if (r0 > r3) goto L31
            if (r0 != r3) goto L67
            int r0 = r7.p
            if (r6 < r0) goto L5a
            boolean r0 = r7.p0()
            if (r0 == 0) goto L56
            goto L5a
        L56:
            r7.t(r4, r2)
            throw r2
        L5a:
            char[] r0 = r7.H
            int r5 = r7.o
            char r0 = r0[r5]
            if (r0 != r1) goto L31
            int r5 = r5 + 1
            r7.o = r5
        L66:
            return
        L67:
            r5 = 32
            if (r0 >= r5) goto L31
            r5 = 10
            if (r0 != r5) goto L78
            int r0 = r7.r
            int r0 = r0 + 1
            r7.r = r0
            r7.s = r6
            goto L31
        L78:
            r5 = 13
            if (r0 != r5) goto L80
            r7.K0()
            goto L31
        L80:
            r5 = 9
            if (r0 != r5) goto L85
            goto L31
        L85:
            r7.y(r0)
            throw r2
        L89:
            java.lang.String r1 = "was expecting either '*' or '/' for a comment"
            r7.x(r0, r1)
            throw r2
        L8f:
            java.lang.String r0 = "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)"
            r7.x(r1, r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tp.M0():void");
    }

    public final void N0() throws IOException {
        while (true) {
            if (this.o >= this.p && !p0()) {
                return;
            }
            char[] cArr = this.H;
            int i = this.o;
            int i2 = i + 1;
            this.o = i2;
            char c = cArr[i];
            if (c < ' ') {
                if (c == '\n') {
                    this.r++;
                    this.s = i2;
                    return;
                } else if (c == '\r') {
                    K0();
                    return;
                } else if (c != '\t') {
                    y(c);
                    throw null;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int O0() throws java.io.IOException {
        /*
            r3 = this;
        L0:
            int r0 = r3.o
            int r1 = r3.p
            if (r0 < r1) goto L11
            boolean r0 = r3.p0()
            if (r0 != 0) goto L11
            r3.m()
            r0 = -1
            return r0
        L11:
            char[] r0 = r3.H
            int r1 = r3.o
            int r2 = r1 + 1
            r3.o = r2
            char r0 = r0[r1]
            r1 = 32
            if (r0 <= r1) goto L33
            r1 = 47
            if (r0 != r1) goto L27
            r3.M0()
            goto L0
        L27:
            r1 = 35
            if (r0 != r1) goto L32
            boolean r1 = r3.P0()
            if (r1 == 0) goto L32
            goto L0
        L32:
            return r0
        L33:
            if (r0 == r1) goto L0
            r1 = 10
            if (r0 != r1) goto L42
            int r0 = r3.r
            int r0 = r0 + 1
            r3.r = r0
            r3.s = r2
            goto L0
        L42:
            r1 = 13
            if (r0 != r1) goto L4a
            r3.K0()
            goto L0
        L4a:
            r1 = 9
            if (r0 != r1) goto L4f
            goto L0
        L4f:
            r3.y(r0)
            r0 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tp.O0():int");
    }

    public final boolean P0() throws IOException {
        if ((this.e & U) == 0) {
            return false;
        }
        N0();
        return true;
    }

    public final void Q0() {
        int i = this.o;
        this.t = this.r;
        this.u = i - this.s;
    }

    public final void R0(int i) throws IOException {
        int i2 = this.o + 1;
        this.o = i2;
        if (i != 9) {
            if (i == 10) {
                this.r++;
                this.s = i2;
            } else if (i == 13) {
                K0();
            } else {
                if (i == 32) {
                    return;
                }
                x(i, "Expected space separating root-level values");
                throw null;
            }
        }
    }

    public char S0(String str, bp bpVar) throws IOException {
        if (this.o >= this.p && !p0()) {
            t(str, bpVar);
            throw null;
        }
        char[] cArr = this.H;
        int i = this.o;
        this.o = i + 1;
        return cArr[i];
    }

    @Override // defpackage.ap
    public yo a() {
        return new yo(I(), -1L, this.o + this.q, this.r, (this.o - this.s) + 1);
    }

    @Override // defpackage.ap
    public final String e() throws IOException {
        bp bpVar = this.f;
        if (bpVar != bp.VALUE_STRING) {
            if (bpVar == null) {
                return null;
            }
            int i = bpVar.h;
            return i != 5 ? (i == 6 || i == 7 || i == 8) ? this.x.d() : bpVar.e : this.v.f;
        }
        if (this.L) {
            this.L = false;
            int i2 = this.o;
            int i3 = this.p;
            if (i2 < i3) {
                int[] iArr = V;
                int length = iArr.length;
                while (true) {
                    char[] cArr = this.H;
                    char c = cArr[i2];
                    if (c >= length || iArr[c] == 0) {
                        i2++;
                        if (i2 >= i3) {
                            break;
                        }
                    } else if (c == '\"') {
                        aq aqVar = this.x;
                        int i4 = this.o;
                        aqVar.k(cArr, i4, i2 - i4);
                        this.o = i2 + 1;
                    }
                }
            } else {
                aq aqVar2 = this.x;
                char[] cArr2 = this.H;
                int i5 = this.o;
                int i6 = i2 - i5;
                aqVar2.b = null;
                aqVar2.c = -1;
                aqVar2.d = 0;
                aqVar2.j = null;
                aqVar2.k = null;
                if (aqVar2.f) {
                    aqVar2.b();
                } else if (aqVar2.h == null) {
                    aqVar2.h = aqVar2.a(i6);
                }
                aqVar2.g = 0;
                aqVar2.i = 0;
                if (aqVar2.c >= 0) {
                    aqVar2.m(i6);
                }
                aqVar2.j = null;
                aqVar2.k = null;
                char[] cArr3 = aqVar2.h;
                int length2 = cArr3.length;
                int i7 = aqVar2.i;
                int i8 = length2 - i7;
                if (i8 >= i6) {
                    System.arraycopy(cArr2, i5, cArr3, i7, i6);
                    aqVar2.i += i6;
                } else {
                    if (i8 > 0) {
                        System.arraycopy(cArr2, i5, cArr3, i7, i8);
                        i5 += i8;
                        i6 -= i8;
                    }
                    do {
                        aqVar2.f();
                        int iMin = Math.min(aqVar2.h.length, i6);
                        System.arraycopy(cArr2, i5, aqVar2.h, 0, iMin);
                        aqVar2.i += iMin;
                        i5 += iMin;
                        i6 -= iMin;
                    } while (i6 > 0);
                }
                this.o = i2;
                char[] cArrH = this.x.h();
                int i9 = this.x.i;
                int[] iArr2 = V;
                int length3 = iArr2.length;
                while (true) {
                    if (this.o >= this.p && !p0()) {
                        t(": was expecting closing quote for a string value", bp.VALUE_STRING);
                        throw null;
                    }
                    char[] cArr4 = this.H;
                    int i10 = this.o;
                    this.o = i10 + 1;
                    char cJ0 = cArr4[i10];
                    if (cJ0 < length3 && iArr2[cJ0] != 0) {
                        if (cJ0 == '\"') {
                            this.x.i = i9;
                            break;
                        }
                        if (cJ0 == '\\') {
                            cJ0 = j0();
                        } else if (cJ0 < ' ') {
                            Z(cJ0, "string value");
                        }
                    }
                    if (i9 >= cArrH.length) {
                        cArrH = this.x.g();
                        i9 = 0;
                    }
                    cArrH[i9] = cJ0;
                    i9++;
                }
            }
        }
        return this.x.d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0171, code lost:
    
        if ((r16.e & defpackage.tp.N) == 0) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0173, code lost:
    
        if (r0 == 93) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0175, code lost:
    
        if (r0 != 125(0x7d, float:1.75E-43)) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0177, code lost:
    
        h0(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x017c, code lost:
    
        return r16.f;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:171:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0558  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x03da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x03d1 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v109, types: [int] */
    /* JADX WARN: Type inference failed for: r0v113, types: [int] */
    /* JADX WARN: Type inference failed for: r0v115, types: [int] */
    /* JADX WARN: Type inference failed for: r0v116, types: [int] */
    /* JADX WARN: Type inference failed for: r0v118 */
    /* JADX WARN: Type inference failed for: r0v119 */
    /* JADX WARN: Type inference failed for: r0v122, types: [int] */
    /* JADX WARN: Type inference failed for: r0v124, types: [int] */
    /* JADX WARN: Type inference failed for: r0v125, types: [int] */
    /* JADX WARN: Type inference failed for: r0v128, types: [int] */
    /* JADX WARN: Type inference failed for: r0v13, types: [int] */
    /* JADX WARN: Type inference failed for: r0v137, types: [int] */
    /* JADX WARN: Type inference failed for: r0v138, types: [int] */
    /* JADX WARN: Type inference failed for: r0v14, types: [int] */
    /* JADX WARN: Type inference failed for: r0v140, types: [char, int] */
    /* JADX WARN: Type inference failed for: r0v141, types: [int] */
    /* JADX WARN: Type inference failed for: r0v145 */
    /* JADX WARN: Type inference failed for: r0v16, types: [int] */
    /* JADX WARN: Type inference failed for: r0v17, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4, types: [char, int] */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [char, int] */
    /* JADX WARN: Type inference failed for: r0v8, types: [int] */
    /* JADX WARN: Type inference failed for: r16v0, types: [ap, gp, hp, tp] */
    @Override // defpackage.ap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.bp g() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tp.g():bp");
    }

    public final void g0(String str, int i, int i2) throws IOException {
        if (Character.isJavaIdentifierPart((char) i2)) {
            z0(str.substring(0, i));
            throw null;
        }
    }

    public final void h0(int i) throws zo {
        if (i == 93) {
            Q0();
            if (!this.v.c()) {
                Q(i, '}');
                throw null;
            }
            this.v = this.v.c;
            this.f = bp.END_ARRAY;
        }
        if (i == 125) {
            Q0();
            rp rpVar = this.v;
            if (!(rpVar.a == 2)) {
                Q(i, ']');
                throw null;
            }
            this.v = rpVar.c;
            this.f = bp.END_OBJECT;
        }
    }

    public char j0() throws IOException {
        if (this.o >= this.p && !p0()) {
            t(" in character escape sequence", bp.VALUE_STRING);
            throw null;
        }
        char[] cArr = this.H;
        int i = this.o;
        this.o = i + 1;
        char c = cArr[i];
        if (c == '\"' || c == '/' || c == '\\') {
            return c;
        }
        if (c == 'b') {
            return '\b';
        }
        if (c == 'f') {
            return '\f';
        }
        if (c == 'n') {
            return '\n';
        }
        if (c == 'r') {
            return CharUtils.CR;
        }
        if (c == 't') {
            return '\t';
        }
        if (c != 'u') {
            if (f(ap.a.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER) || (c == '\'' && f(ap.a.ALLOW_SINGLE_QUOTES))) {
                return c;
            }
            StringBuilder sbZ = jo.z("Unrecognized character escape ");
            sbZ.append(hp.k(c));
            throw new zo(this, sbZ.toString());
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            if (this.o >= this.p && !p0()) {
                t(" in character escape sequence", bp.VALUE_STRING);
                throw null;
            }
            char[] cArr2 = this.H;
            int i4 = this.o;
            this.o = i4 + 1;
            char c2 = cArr2[i4];
            int i5 = kp.g[c2 & 255];
            if (i5 < 0) {
                x(c2, "expected a hex-digit for character escape sequence");
                throw null;
            }
            i2 = (i2 << 4) | i5;
        }
        return (char) i2;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r10v0 ??, r10v1 ??, r10v4 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public defpackage.bp k0(
    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r10v0 ??, r10v1 ??, r10v4 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r10v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:405)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */

    /* JADX WARN: Removed duplicated region for block: B:27:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.bp m0(int r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tp.m0(int):bp");
    }

    public boolean p0() throws IOException {
        Reader reader = this.G;
        if (reader != null) {
            char[] cArr = this.H;
            int i = reader.read(cArr, 0, cArr.length);
            if (i > 0) {
                int i2 = this.p;
                long j = i2;
                this.q += j;
                this.s -= i2;
                this.M -= j;
                this.o = 0;
                this.p = i;
                return true;
            }
            F();
            if (i == 0) {
                StringBuilder sbZ = jo.z("Reader returned 0 characters when trying to read ");
                sbZ.append(this.p);
                throw new IOException(sbZ.toString());
            }
        }
        return false;
    }

    public final void r0(String str, int i) throws IOException {
        int i2;
        char c;
        int length = str.length();
        if (this.o + length < this.p) {
            while (this.H[this.o] == str.charAt(i)) {
                int i3 = this.o + 1;
                this.o = i3;
                i++;
                if (i >= length) {
                    char c2 = this.H[i3];
                    if (c2 < '0' || c2 == ']' || c2 == '}') {
                        return;
                    }
                    g0(str, i, c2);
                    return;
                }
            }
            z0(str.substring(0, i));
            throw null;
        }
        int length2 = str.length();
        do {
            if ((this.o >= this.p && !p0()) || this.H[this.o] != str.charAt(i)) {
                z0(str.substring(0, i));
                throw null;
            }
            i2 = this.o + 1;
            this.o = i2;
            i++;
        } while (i < length2);
        if ((i2 < this.p || p0()) && (c = this.H[this.o]) >= '0' && c != ']' && c != '}') {
            g0(str, i, c);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r8v0 ??, r8v1 ??, r8v18 ??, r8v11 ??, r8v6 ??, r8v5 ??, r8v9 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public final defpackage.bp s0(
    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r8v0 ??, r8v1 ??, r8v18 ??, r8v11 ??, r8v6 ??, r8v5 ??, r8v9 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r8v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:405)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */

    public final String t0(int i, int i2, int i3) throws IOException {
        this.x.k(this.H, i, this.o - i);
        char[] cArrH = this.x.h();
        int i4 = this.x.i;
        while (true) {
            if (this.o >= this.p && !p0()) {
                t(" in field name", bp.FIELD_NAME);
                throw null;
            }
            char[] cArr = this.H;
            int i5 = this.o;
            this.o = i5 + 1;
            char cJ0 = cArr[i5];
            if (cJ0 <= '\\') {
                if (cJ0 == '\\') {
                    cJ0 = j0();
                } else if (cJ0 <= i3) {
                    if (cJ0 == i3) {
                        aq aqVar = this.x;
                        aqVar.i = i4;
                        return this.J.c(aqVar.i(), aqVar.j(), aqVar.l(), i2);
                    }
                    if (cJ0 < ' ') {
                        Z(cJ0, InetAddressKeys.KEY_NAME);
                    }
                }
            }
            i2 = (i2 * 33) + cJ0;
            int i6 = i4 + 1;
            cArrH[i4] = cJ0;
            if (i6 >= cArrH.length) {
                cArrH = this.x.g();
                i4 = 0;
            } else {
                i4 = i6;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0096 A[EDGE_INSN: B:47:0x0096->B:48:0x0098 BREAK  A[LOOP:0: B:34:0x006a->B:142:?]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.bp v0(boolean r18, int r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tp.v0(boolean, int):bp");
    }

    public void z0(String str) throws IOException {
        C0(str, f(ap.a.ALLOW_NON_NUMERIC_NUMBERS) ? "(JSON String, Number (or 'NaN'/'INF'/'+INF'), Array, Object or token 'null', 'true' or 'false')" : "(JSON String, Number, Array, Object or token 'null', 'true' or 'false')");
        throw null;
    }
}
