package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public abstract class de5 {
    public static final de5 a = new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');
    public static final de5 b;

    public static final class a {
        public final String a;
        public final char[] b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final byte[] g;
        public final boolean[] h;

        public a(String str, char[] cArr) {
            Objects.requireNonNull(str);
            this.a = str;
            Objects.requireNonNull(cArr);
            this.b = cArr;
            try {
                int iB = fe5.b(cArr.length, RoundingMode.UNNECESSARY);
                this.d = iB;
                int iMin = Math.min(8, Integer.lowestOneBit(iB));
                try {
                    this.e = 8 / iMin;
                    this.f = iB / iMin;
                    this.c = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        c50.l(c < 128, "Non-ASCII character: %s", c);
                        c50.l(bArr[c] == -1, "Duplicate character: %s", c);
                        bArr[c] = (byte) i;
                    }
                    this.g = bArr;
                    boolean[] zArr = new boolean[this.e];
                    for (int i2 = 0; i2 < this.f; i2++) {
                        zArr[fe5.a(i2 * 8, this.d, RoundingMode.CEILING)] = true;
                    }
                    this.h = zArr;
                } catch (ArithmeticException e) {
                    StringBuilder sbZ = jo.z("Illegal alphabet ");
                    sbZ.append(new String(cArr));
                    throw new IllegalArgumentException(sbZ.toString(), e);
                }
            } catch (ArithmeticException e2) {
                StringBuilder sbZ2 = jo.z("Illegal alphabet length ");
                sbZ2.append(cArr.length);
                throw new IllegalArgumentException(sbZ2.toString(), e2);
            }
        }

        public int a(char c) throws d {
            if (c > 127) {
                StringBuilder sbZ = jo.z("Unrecognized character: 0x");
                sbZ.append(Integer.toHexString(c));
                throw new d(sbZ.toString());
            }
            byte b = this.g[c];
            if (b != -1) {
                return b;
            }
            if (c > ' ' && c != 127) {
                throw new d(jo.f("Unrecognized character: ", c));
            }
            StringBuilder sbZ2 = jo.z("Unrecognized character: 0x");
            sbZ2.append(Integer.toHexString(c));
            throw new d(sbZ2.toString());
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Arrays.equals(this.b, ((a) obj).b);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.b);
        }

        public String toString() {
            return this.a;
        }
    }

    public static final class b extends e {
        public final char[] f;

        public b(a aVar) {
            super(aVar, null);
            this.f = new char[512];
            c50.r(aVar.b.length == 16);
            for (int i = 0; i < 256; i++) {
                char[] cArr = this.f;
                char[] cArr2 = aVar.b;
                cArr[i] = cArr2[i >>> 4];
                cArr[i | RecyclerView.a0.FLAG_TMP_DETACHED] = cArr2[i & 15];
            }
        }

        @Override // de5.e, defpackage.de5
        public int b(byte[] bArr, CharSequence charSequence) throws d {
            if (charSequence.length() % 2 == 1) {
                StringBuilder sbZ = jo.z("Invalid input length ");
                sbZ.append(charSequence.length());
                throw new d(sbZ.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                bArr[i2] = (byte) ((this.c.a(charSequence.charAt(i)) << 4) | this.c.a(charSequence.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }

        @Override // de5.e, defpackage.de5
        public void d(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            c50.C(i, i + i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i + i3] & 255;
                appendable.append(this.f[i4]);
                appendable.append(this.f[i4 | RecyclerView.a0.FLAG_TMP_DETACHED]);
            }
        }

        @Override // de5.e
        public de5 h(a aVar, Character ch) {
            return new b(aVar);
        }
    }

    public static final class d extends IOException {
        public d(String str) {
            super(str);
        }
    }

    public static class e extends de5 {
        public final a c;
        public final Character d;
        public transient de5 e;

        /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public e(de5.a r5, java.lang.Character r6) {
            /*
                r4 = this;
                r4.<init>()
                java.util.Objects.requireNonNull(r5)
                r4.c = r5
                r0 = 0
                r1 = 1
                if (r6 == 0) goto L1f
                char r2 = r6.charValue()
                byte[] r5 = r5.g
                int r3 = r5.length
                if (r2 >= r3) goto L1c
                r5 = r5[r2]
                r2 = -1
                if (r5 == r2) goto L1c
                r5 = 1
                goto L1d
            L1c:
                r5 = 0
            L1d:
                if (r5 != 0) goto L20
            L1f:
                r0 = 1
            L20:
                java.lang.String r5 = "Padding character %s was already in alphabet"
                defpackage.c50.o(r0, r5, r6)
                r4.d = r6
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: de5.e.<init>(de5$a, java.lang.Character):void");
        }

        @Override // defpackage.de5
        public int b(byte[] bArr, CharSequence charSequence) throws d {
            a aVar;
            CharSequence charSequenceE = e(charSequence);
            a aVar2 = this.c;
            if (!aVar2.h[charSequenceE.length() % aVar2.e]) {
                StringBuilder sbZ = jo.z("Invalid input length ");
                sbZ.append(charSequenceE.length());
                throw new d(sbZ.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequenceE.length()) {
                long jA = 0;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    aVar = this.c;
                    if (i3 >= aVar.e) {
                        break;
                    }
                    jA <<= aVar.d;
                    if (i + i3 < charSequenceE.length()) {
                        jA |= this.c.a(charSequenceE.charAt(i4 + i));
                        i4++;
                    }
                    i3++;
                }
                int i5 = aVar.f;
                int i6 = (i5 * 8) - (i4 * aVar.d);
                int i7 = (i5 - 1) * 8;
                while (i7 >= i6) {
                    bArr[i2] = (byte) ((jA >>> i7) & 255);
                    i7 -= 8;
                    i2++;
                }
                i += this.c.e;
            }
            return i2;
        }

        @Override // defpackage.de5
        public void d(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            c50.C(i, i + i2, bArr.length);
            int i3 = 0;
            while (i3 < i2) {
                g(appendable, bArr, i + i3, Math.min(this.c.f, i2 - i3));
                i3 += this.c.f;
            }
        }

        @Override // defpackage.de5
        public CharSequence e(CharSequence charSequence) {
            Objects.requireNonNull(charSequence);
            Character ch = this.d;
            if (ch == null) {
                return charSequence;
            }
            char cCharValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == cCharValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return this.c.equals(eVar.c) && c50.T(this.d, eVar.d);
        }

        @Override // defpackage.de5
        public de5 f() {
            boolean z;
            boolean z2;
            de5 de5VarH = this.e;
            if (de5VarH == null) {
                a aVar = this.c;
                char[] cArr = aVar.b;
                int length = cArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    }
                    char c = cArr[i];
                    if (c >= 'a' && c <= 'z') {
                        z = true;
                        break;
                    }
                    i++;
                }
                if (z) {
                    char[] cArr2 = aVar.b;
                    int length2 = cArr2.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length2) {
                            z2 = false;
                            break;
                        }
                        char c2 = cArr2[i2];
                        if (c2 >= 'A' && c2 <= 'Z') {
                            z2 = true;
                            break;
                        }
                        i2++;
                    }
                    c50.G(!z2, "Cannot call upperCase() on a mixed-case alphabet");
                    char[] cArr3 = new char[aVar.b.length];
                    int i3 = 0;
                    while (true) {
                        char[] cArr4 = aVar.b;
                        if (i3 >= cArr4.length) {
                            break;
                        }
                        char c3 = cArr4[i3];
                        if (c3 >= 'a' && c3 <= 'z') {
                            c3 = (char) (c3 ^ ' ');
                        }
                        cArr3[i3] = c3;
                        i3++;
                    }
                    aVar = new a(jo.s(new StringBuilder(), aVar.a, ".upperCase()"), cArr3);
                }
                de5VarH = aVar == this.c ? this : h(aVar, this.d);
                this.e = de5VarH;
            }
            return de5VarH;
        }

        public void g(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            c50.C(i, i + i2, bArr.length);
            int i3 = 0;
            c50.r(i2 <= this.c.f);
            long j = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                j = (j | (bArr[i + i4] & 255)) << 8;
            }
            int i5 = ((i2 + 1) * 8) - this.c.d;
            while (i3 < i2 * 8) {
                a aVar = this.c;
                appendable.append(aVar.b[((int) (j >>> (i5 - i3))) & aVar.c]);
                i3 += this.c.d;
            }
            if (this.d != null) {
                while (i3 < this.c.f * 8) {
                    appendable.append(this.d.charValue());
                    i3 += this.c.d;
                }
            }
        }

        public de5 h(a aVar, Character ch) {
            return new e(aVar, ch);
        }

        public int hashCode() {
            return this.c.hashCode() ^ Arrays.hashCode(new Object[]{this.d});
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.c.a);
            if (8 % this.c.d != 0) {
                if (this.d == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.d);
                    sb.append("')");
                }
            }
            return sb.toString();
        }
    }

    static {
        new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
        new e(new a("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567".toCharArray()), '=');
        new e(new a("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV".toCharArray()), '=');
        b = new b(new a("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public final byte[] a(CharSequence charSequence) {
        try {
            int length = (int) (((((e) this).c.d * r6.length()) + 7) / 8);
            byte[] bArr = new byte[length];
            int iB = b(bArr, e(charSequence));
            if (iB == length) {
                return bArr;
            }
            byte[] bArr2 = new byte[iB];
            System.arraycopy(bArr, 0, bArr2, 0, iB);
            return bArr2;
        } catch (d e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public abstract int b(byte[] bArr, CharSequence charSequence) throws d;

    public String c(byte[] bArr) {
        int length = bArr.length;
        c50.C(0, 0 + length, bArr.length);
        a aVar = ((e) this).c;
        StringBuilder sb = new StringBuilder(fe5.a(length, aVar.f, RoundingMode.CEILING) * aVar.e);
        try {
            d(sb, bArr, 0, length);
            return sb.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public abstract void d(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    public abstract CharSequence e(CharSequence charSequence);

    public abstract de5 f();

    public static final class c extends e {
        public c(String str, String str2, Character ch) {
            a aVar = new a(str, str2.toCharArray());
            super(aVar, ch);
            c50.r(aVar.b.length == 64);
        }

        @Override // de5.e, defpackage.de5
        public int b(byte[] bArr, CharSequence charSequence) throws d {
            CharSequence charSequenceE = e(charSequence);
            a aVar = this.c;
            if (!aVar.h[charSequenceE.length() % aVar.e]) {
                StringBuilder sbZ = jo.z("Invalid input length ");
                sbZ.append(charSequenceE.length());
                throw new d(sbZ.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequenceE.length()) {
                int i3 = i + 1;
                int i4 = i3 + 1;
                int iA = (this.c.a(charSequenceE.charAt(i)) << 18) | (this.c.a(charSequenceE.charAt(i3)) << 12);
                int i5 = i2 + 1;
                bArr[i2] = (byte) (iA >>> 16);
                if (i4 < charSequenceE.length()) {
                    int i6 = i4 + 1;
                    int iA2 = iA | (this.c.a(charSequenceE.charAt(i4)) << 6);
                    i2 = i5 + 1;
                    bArr[i5] = (byte) ((iA2 >>> 8) & Base64.BASELENGTH);
                    if (i6 < charSequenceE.length()) {
                        i4 = i6 + 1;
                        i5 = i2 + 1;
                        bArr[i2] = (byte) ((iA2 | this.c.a(charSequenceE.charAt(i6))) & Base64.BASELENGTH);
                    } else {
                        i = i6;
                    }
                }
                i2 = i5;
                i = i4;
            }
            return i2;
        }

        @Override // de5.e, defpackage.de5
        public void d(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            int i3 = i + i2;
            c50.C(i, i3, bArr.length);
            while (i2 >= 3) {
                int i4 = i + 1;
                int i5 = i4 + 1;
                int i6 = ((bArr[i] & 255) << 16) | ((bArr[i4] & 255) << 8);
                int i7 = i6 | (bArr[i5] & 255);
                appendable.append(this.c.b[i7 >>> 18]);
                appendable.append(this.c.b[(i7 >>> 12) & 63]);
                appendable.append(this.c.b[(i7 >>> 6) & 63]);
                appendable.append(this.c.b[i7 & 63]);
                i2 -= 3;
                i = i5 + 1;
            }
            if (i < i3) {
                g(appendable, bArr, i, i3 - i);
            }
        }

        @Override // de5.e
        public de5 h(a aVar, Character ch) {
            return new c(aVar, ch);
        }

        public c(a aVar, Character ch) {
            super(aVar, ch);
            c50.r(aVar.b.length == 64);
        }
    }
}
