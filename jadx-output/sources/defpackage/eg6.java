package defpackage;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.CharUtils;

/* loaded from: classes.dex */
public class eg6 implements Closeable {
    public static final char[] t = ")]}'\n".toCharArray();
    public final Reader e;
    public boolean f = false;
    public final char[] g = new char[1024];
    public int h = 0;
    public int i = 0;
    public int j = 0;
    public int k = 0;
    public int l = 0;
    public long m;
    public int n;
    public String o;
    public int[] p;
    public int q;
    public String[] r;
    public int[] s;

    public class a extends xe6 {
    }

    static {
        xe6.a = new a();
    }

    public eg6(Reader reader) {
        int[] iArr = new int[32];
        this.p = iArr;
        this.q = 0;
        this.q = 0 + 1;
        iArr[0] = 6;
        this.r = new String[32];
        this.s = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.e = reader;
    }

    public String C() throws IOException {
        String strF;
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE == 14) {
            strF = L();
        } else if (iE == 12) {
            strF = F('\'');
        } else {
            if (iE != 13) {
                StringBuilder sbZ = jo.z("Expected a name but was ");
                sbZ.append(Q());
                sbZ.append(q());
                throw new IllegalStateException(sbZ.toString());
            }
            strF = F('\"');
        }
        this.l = 0;
        this.r[this.q - 1] = strF;
        return strF;
    }

    public final int D(boolean z) throws IOException {
        char[] cArr = this.g;
        int i = this.h;
        int i2 = this.i;
        while (true) {
            boolean z2 = true;
            if (i == i2) {
                this.h = i;
                if (!i(1)) {
                    if (!z) {
                        return -1;
                    }
                    StringBuilder sbZ = jo.z("End of input");
                    sbZ.append(q());
                    throw new EOFException(sbZ.toString());
                }
                i = this.h;
                i2 = this.i;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.j++;
                this.k = i3;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.h = i3;
                    if (i3 == i2) {
                        this.h = i3 - 1;
                        boolean zI = i(2);
                        this.h++;
                        if (!zI) {
                            return c;
                        }
                    }
                    c();
                    int i4 = this.h;
                    char c2 = cArr[i4];
                    if (c2 == '*') {
                        this.h = i4 + 1;
                        while (true) {
                            if (this.h + 2 > this.i && !i(2)) {
                                z2 = false;
                                break;
                            }
                            char[] cArr2 = this.g;
                            int i5 = this.h;
                            if (cArr2[i5] != '\n') {
                                for (int i6 = 0; i6 < 2; i6++) {
                                    if (this.g[this.h + i6] != "*/".charAt(i6)) {
                                        break;
                                    }
                                }
                                break;
                            }
                            this.j++;
                            this.k = i5 + 1;
                            this.h++;
                        }
                        if (!z2) {
                            h0("Unterminated comment");
                            throw null;
                        }
                        i = this.h + 2;
                        i2 = this.i;
                    } else {
                        if (c2 != '/') {
                            return c;
                        }
                        this.h = i4 + 1;
                        d0();
                        i = this.h;
                        i2 = this.i;
                    }
                } else {
                    if (c != '#') {
                        this.h = i3;
                        return c;
                    }
                    this.h = i3;
                    c();
                    d0();
                    i = this.h;
                    i2 = this.i;
                }
            }
            i = i3;
        }
    }

    public void E() throws IOException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE != 7) {
            StringBuilder sbZ = jo.z("Expected null but was ");
            sbZ.append(Q());
            sbZ.append(q());
            throw new IllegalStateException(sbZ.toString());
        }
        this.l = 0;
        int[] iArr = this.s;
        int i = this.q - 1;
        iArr[i] = iArr[i] + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
    
        if (r2 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005f, code lost:
    
        r2 = new java.lang.StringBuilder(java.lang.Math.max((r3 - r4) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006d, code lost:
    
        r2.append(r0, r4, r3 - r4);
        r10.h = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String F(char r11) throws java.io.IOException {
        /*
            r10 = this;
            char[] r0 = r10.g
            r1 = 0
            r2 = r1
        L4:
            int r3 = r10.h
            int r4 = r10.i
        L8:
            r5 = r4
            r4 = r3
        La:
            r6 = 16
            r7 = 1
            if (r3 >= r5) goto L5d
            int r8 = r3 + 1
            char r3 = r0[r3]
            if (r3 != r11) goto L29
            r10.h = r8
            int r8 = r8 - r4
            int r8 = r8 - r7
            if (r2 != 0) goto L21
            java.lang.String r11 = new java.lang.String
            r11.<init>(r0, r4, r8)
            return r11
        L21:
            r2.append(r0, r4, r8)
            java.lang.String r11 = r2.toString()
            return r11
        L29:
            r9 = 92
            if (r3 != r9) goto L50
            r10.h = r8
            int r8 = r8 - r4
            int r8 = r8 - r7
            if (r2 != 0) goto L41
            int r2 = r8 + 1
            int r2 = r2 * 2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r3.<init>(r2)
            r2 = r3
        L41:
            r2.append(r0, r4, r8)
            char r3 = r10.Z()
            r2.append(r3)
            int r3 = r10.h
            int r4 = r10.i
            goto L8
        L50:
            r6 = 10
            if (r3 != r6) goto L5b
            int r3 = r10.j
            int r3 = r3 + r7
            r10.j = r3
            r10.k = r8
        L5b:
            r3 = r8
            goto La
        L5d:
            if (r2 != 0) goto L6d
            int r2 = r3 - r4
            int r2 = r2 * 2
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r5.<init>(r2)
            r2 = r5
        L6d:
            int r5 = r3 - r4
            r2.append(r0, r4, r5)
            r10.h = r3
            boolean r3 = r10.i(r7)
            if (r3 == 0) goto L7b
            goto L4
        L7b:
            java.lang.String r11 = "Unterminated string"
            r10.h0(r11)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eg6.F(char):java.lang.String");
    }

    public String I() throws IOException {
        String str;
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE == 10) {
            str = L();
        } else if (iE == 8) {
            str = F('\'');
        } else if (iE == 9) {
            str = F('\"');
        } else if (iE == 11) {
            str = this.o;
            this.o = null;
        } else if (iE == 15) {
            str = Long.toString(this.m);
        } else {
            if (iE != 16) {
                StringBuilder sbZ = jo.z("Expected a string but was ");
                sbZ.append(Q());
                sbZ.append(q());
                throw new IllegalStateException(sbZ.toString());
            }
            str = new String(this.g, this.h, this.n);
            this.h += this.n;
        }
        this.l = 0;
        int[] iArr = this.s;
        int i = this.q - 1;
        iArr[i] = iArr[i] + 1;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        c();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String L() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = 0
        L3:
            int r3 = r6.h
            int r4 = r3 + r2
            int r5 = r6.i
            if (r4 >= r5) goto L4e
            char[] r4 = r6.g
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.c()
            goto L5c
        L4e:
            char[] r3 = r6.g
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.i(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r0 = r2
            goto L7e
        L5e:
            if (r1 != 0) goto L6b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r1.<init>(r3)
        L6b:
            char[] r3 = r6.g
            int r4 = r6.h
            r1.append(r3, r4, r2)
            int r3 = r6.h
            int r3 = r3 + r2
            r6.h = r3
            r2 = 1
            boolean r2 = r6.i(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r1 != 0) goto L8a
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.g
            int r3 = r6.h
            r1.<init>(r2, r3, r0)
            goto L95
        L8a:
            char[] r2 = r6.g
            int r3 = r6.h
            r1.append(r2, r3, r0)
            java.lang.String r1 = r1.toString()
        L95:
            int r2 = r6.h
            int r2 = r2 + r0
            r6.h = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eg6.L():java.lang.String");
    }

    public fg6 Q() throws IOException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        switch (iE) {
            case 1:
                return fg6.BEGIN_OBJECT;
            case 2:
                return fg6.END_OBJECT;
            case 3:
                return fg6.BEGIN_ARRAY;
            case 4:
                return fg6.END_ARRAY;
            case 5:
            case 6:
                return fg6.BOOLEAN;
            case 7:
                return fg6.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return fg6.STRING;
            case 12:
            case 13:
            case 14:
                return fg6.NAME;
            case 15:
            case 16:
                return fg6.NUMBER;
            case 17:
                return fg6.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void S(int i) {
        int i2 = this.q;
        int[] iArr = this.p;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.p = Arrays.copyOf(iArr, i3);
            this.s = Arrays.copyOf(this.s, i3);
            this.r = (String[]) Arrays.copyOf(this.r, i3);
        }
        int[] iArr2 = this.p;
        int i4 = this.q;
        this.q = i4 + 1;
        iArr2[i4] = i;
    }

    public final char Z() throws IOException {
        int i;
        int i2;
        if (this.h == this.i && !i(1)) {
            h0("Unterminated escape sequence");
            throw null;
        }
        char[] cArr = this.g;
        int i3 = this.h;
        int i4 = i3 + 1;
        this.h = i4;
        char c = cArr[i3];
        if (c == '\n') {
            this.j++;
            this.k = i4;
        } else if (c != '\"' && c != '\'' && c != '/' && c != '\\') {
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
                h0("Invalid escape sequence");
                throw null;
            }
            if (i4 + 4 > this.i && !i(4)) {
                h0("Unterminated escape sequence");
                throw null;
            }
            char c2 = 0;
            int i5 = this.h;
            int i6 = i5 + 4;
            while (i5 < i6) {
                char c3 = this.g[i5];
                char c4 = (char) (c2 << 4);
                if (c3 < '0' || c3 > '9') {
                    if (c3 >= 'a' && c3 <= 'f') {
                        i = c3 - 'a';
                    } else {
                        if (c3 < 'A' || c3 > 'F') {
                            StringBuilder sbZ = jo.z("\\u");
                            sbZ.append(new String(this.g, this.h, 4));
                            throw new NumberFormatException(sbZ.toString());
                        }
                        i = c3 - 'A';
                    }
                    i2 = i + 10;
                } else {
                    i2 = c3 - '0';
                }
                c2 = (char) (i2 + c4);
                i5++;
            }
            this.h += 4;
            return c2;
        }
        return c;
    }

    public void a() throws IOException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE == 3) {
            S(1);
            this.s[this.q - 1] = 0;
            this.l = 0;
        } else {
            StringBuilder sbZ = jo.z("Expected BEGIN_ARRAY but was ");
            sbZ.append(Q());
            sbZ.append(q());
            throw new IllegalStateException(sbZ.toString());
        }
    }

    public final void a0(char c) throws IOException {
        char[] cArr = this.g;
        do {
            int i = this.h;
            int i2 = this.i;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.h = i3;
                    return;
                }
                if (c2 == '\\') {
                    this.h = i3;
                    Z();
                    i = this.h;
                    i2 = this.i;
                } else {
                    if (c2 == '\n') {
                        this.j++;
                        this.k = i3;
                    }
                    i = i3;
                }
            }
            this.h = i;
        } while (i(1));
        h0("Unterminated string");
        throw null;
    }

    public void b() throws IOException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE == 1) {
            S(3);
            this.l = 0;
        } else {
            StringBuilder sbZ = jo.z("Expected BEGIN_OBJECT but was ");
            sbZ.append(Q());
            sbZ.append(q());
            throw new IllegalStateException(sbZ.toString());
        }
    }

    public final void c() throws IOException {
        if (this.f) {
            return;
        }
        h0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.l = 0;
        this.p[0] = 8;
        this.q = 1;
        this.e.close();
    }

    public final void d0() throws IOException {
        char c;
        do {
            if (this.h >= this.i && !i(1)) {
                return;
            }
            char[] cArr = this.g;
            int i = this.h;
            int i2 = i + 1;
            this.h = i2;
            c = cArr[i];
            if (c == '\n') {
                this.j++;
                this.k = i2;
                return;
            }
        } while (c != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:158:0x0203, code lost:
    
        if (n(r6) != false) goto L113;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0174 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0264 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0265  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int e() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 793
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eg6.e():int");
    }

    public void f() throws IOException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE != 4) {
            StringBuilder sbZ = jo.z("Expected END_ARRAY but was ");
            sbZ.append(Q());
            sbZ.append(q());
            throw new IllegalStateException(sbZ.toString());
        }
        int i = this.q - 1;
        this.q = i;
        int[] iArr = this.s;
        int i2 = i - 1;
        iArr[i2] = iArr[i2] + 1;
        this.l = 0;
    }

    public void g() throws IOException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE != 2) {
            StringBuilder sbZ = jo.z("Expected END_OBJECT but was ");
            sbZ.append(Q());
            sbZ.append(q());
            throw new IllegalStateException(sbZ.toString());
        }
        int i = this.q - 1;
        this.q = i;
        this.r[i] = null;
        int[] iArr = this.s;
        int i2 = i - 1;
        iArr[i2] = iArr[i2] + 1;
        this.l = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a1, code lost:
    
        c();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:61:0x009b. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void g0() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eg6.g0():void");
    }

    public final IOException h0(String str) throws IOException {
        StringBuilder sbZ = jo.z(str);
        sbZ.append(q());
        throw new hg6(sbZ.toString());
    }

    public final boolean i(int i) throws IOException {
        int i2;
        int i3;
        char[] cArr = this.g;
        int i4 = this.k;
        int i5 = this.h;
        this.k = i4 - i5;
        int i6 = this.i;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.i = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.i = 0;
        }
        this.h = 0;
        do {
            Reader reader = this.e;
            int i8 = this.i;
            int i9 = reader.read(cArr, i8, cArr.length - i8);
            if (i9 == -1) {
                return false;
            }
            i2 = this.i + i9;
            this.i = i2;
            if (this.j == 0 && (i3 = this.k) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.h++;
                this.k = i3 + 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    public String k() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = this.q;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.p[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(this.s[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                String[] strArr = this.r;
                if (strArr[i2] != null) {
                    sb.append(strArr[i2]);
                }
            }
        }
        return sb.toString();
    }

    public boolean m() throws IOException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        return (iE == 2 || iE == 4) ? false : true;
    }

    public final boolean n(char c) throws IOException {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        c();
        return false;
    }

    public String q() {
        return " at line " + (this.j + 1) + " column " + ((this.h - this.k) + 1) + " path " + k();
    }

    public boolean t() throws IOException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE == 5) {
            this.l = 0;
            int[] iArr = this.s;
            int i = this.q - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iE != 6) {
            StringBuilder sbZ = jo.z("Expected a boolean but was ");
            sbZ.append(Q());
            sbZ.append(q());
            throw new IllegalStateException(sbZ.toString());
        }
        this.l = 0;
        int[] iArr2 = this.s;
        int i2 = this.q - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return false;
    }

    public String toString() {
        return getClass().getSimpleName() + q();
    }

    public double w() throws IOException, NumberFormatException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE == 15) {
            this.l = 0;
            int[] iArr = this.s;
            int i = this.q - 1;
            iArr[i] = iArr[i] + 1;
            return this.m;
        }
        if (iE == 16) {
            this.o = new String(this.g, this.h, this.n);
            this.h += this.n;
        } else if (iE == 8 || iE == 9) {
            this.o = F(iE == 8 ? '\'' : '\"');
        } else if (iE == 10) {
            this.o = L();
        } else if (iE != 11) {
            StringBuilder sbZ = jo.z("Expected a double but was ");
            sbZ.append(Q());
            sbZ.append(q());
            throw new IllegalStateException(sbZ.toString());
        }
        this.l = 11;
        double d = Double.parseDouble(this.o);
        if (!this.f && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new hg6("JSON forbids NaN and infinities: " + d + q());
        }
        this.o = null;
        this.l = 0;
        int[] iArr2 = this.s;
        int i2 = this.q - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return d;
    }

    public int x() throws IOException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE == 15) {
            long j = this.m;
            int i = (int) j;
            if (j != i) {
                StringBuilder sbZ = jo.z("Expected an int but was ");
                sbZ.append(this.m);
                sbZ.append(q());
                throw new NumberFormatException(sbZ.toString());
            }
            this.l = 0;
            int[] iArr = this.s;
            int i2 = this.q - 1;
            iArr[i2] = iArr[i2] + 1;
            return i;
        }
        if (iE == 16) {
            this.o = new String(this.g, this.h, this.n);
            this.h += this.n;
        } else {
            if (iE != 8 && iE != 9 && iE != 10) {
                StringBuilder sbZ2 = jo.z("Expected an int but was ");
                sbZ2.append(Q());
                sbZ2.append(q());
                throw new IllegalStateException(sbZ2.toString());
            }
            if (iE == 10) {
                this.o = L();
            } else {
                this.o = F(iE == 8 ? '\'' : '\"');
            }
            try {
                int i3 = Integer.parseInt(this.o);
                this.l = 0;
                int[] iArr2 = this.s;
                int i4 = this.q - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException unused) {
            }
        }
        this.l = 11;
        double d = Double.parseDouble(this.o);
        int i5 = (int) d;
        if (i5 != d) {
            StringBuilder sbZ3 = jo.z("Expected an int but was ");
            sbZ3.append(this.o);
            sbZ3.append(q());
            throw new NumberFormatException(sbZ3.toString());
        }
        this.o = null;
        this.l = 0;
        int[] iArr3 = this.s;
        int i6 = this.q - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    public long y() throws IOException, NumberFormatException {
        int iE = this.l;
        if (iE == 0) {
            iE = e();
        }
        if (iE == 15) {
            this.l = 0;
            int[] iArr = this.s;
            int i = this.q - 1;
            iArr[i] = iArr[i] + 1;
            return this.m;
        }
        if (iE == 16) {
            this.o = new String(this.g, this.h, this.n);
            this.h += this.n;
        } else {
            if (iE != 8 && iE != 9 && iE != 10) {
                StringBuilder sbZ = jo.z("Expected a long but was ");
                sbZ.append(Q());
                sbZ.append(q());
                throw new IllegalStateException(sbZ.toString());
            }
            if (iE == 10) {
                this.o = L();
            } else {
                this.o = F(iE == 8 ? '\'' : '\"');
            }
            try {
                long j = Long.parseLong(this.o);
                this.l = 0;
                int[] iArr2 = this.s;
                int i2 = this.q - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return j;
            } catch (NumberFormatException unused) {
            }
        }
        this.l = 11;
        double d = Double.parseDouble(this.o);
        long j2 = (long) d;
        if (j2 != d) {
            StringBuilder sbZ2 = jo.z("Expected a long but was ");
            sbZ2.append(this.o);
            sbZ2.append(q());
            throw new NumberFormatException(sbZ2.toString());
        }
        this.o = null;
        this.l = 0;
        int[] iArr3 = this.s;
        int i3 = this.q - 1;
        iArr3[i3] = iArr3[i3] + 1;
        return j2;
    }
}
