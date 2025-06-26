package defpackage;

import defpackage.zw3;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import java.util.logging.Logger;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class w04 {
    public final ByteBuffer a;
    public zw3 b;
    public int c;

    public w04(byte[] bArr, int i, int i2) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i, i2);
        this.a = byteBufferWrap;
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 2048) {
                i3 += (127 - cCharAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char cCharAt2 = charSequence.charAt(i2);
                    if (cCharAt2 < 2048) {
                        i += (127 - cCharAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                throw new IllegalArgumentException(jo.M(39, "Unpaired surrogate at index ", i2));
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        long j = i3 + 4294967296L;
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(j);
        throw new IllegalArgumentException(sb.toString());
    }

    public static int g(int i, c14 c14Var) {
        int iR = r(i);
        int iD = c14Var.d();
        return t(iD) + iD + iR;
    }

    public static int h(int i, String str) {
        int iR = r(i);
        int iA = a(str);
        return iR + t(iA) + iA;
    }

    public static int i(int i, byte[] bArr) {
        return r(i) + t(bArr.length) + bArr.length;
    }

    public static int l(int i, long j) {
        return q(j) + r(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v28 */
    public static void m(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        char cCharAt;
        int i3;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int i4 = 0;
        if (!byteBuffer.hasArray()) {
            int length = charSequence.length();
            while (i4 < length) {
                char cCharAt2 = charSequence.charAt(i4);
                char c = cCharAt2;
                if (cCharAt2 >= 128) {
                    if (cCharAt2 < 2048) {
                        i3 = (cCharAt2 >>> 6) | 960;
                    } else {
                        if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                            int i5 = i4 + 1;
                            if (i5 != charSequence.length()) {
                                char cCharAt3 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                                    byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                    byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put((byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new IllegalArgumentException(jo.M(39, "Unpaired surrogate at index ", i4 - 1));
                        }
                        byteBuffer.put((byte) ((cCharAt2 >>> '\f') | 480));
                        i3 = ((cCharAt2 >>> 6) & 63) | 128;
                    }
                    byteBuffer.put((byte) i3);
                    c = (cCharAt2 & '?') | 128;
                    byteBuffer.put((byte) c);
                } else {
                    byteBuffer.put((byte) c);
                }
                i4++;
            }
            return;
        }
        try {
            byte[] bArrArray = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            int iRemaining = byteBuffer.remaining();
            int length2 = charSequence.length();
            int i6 = iRemaining + iArrayOffset;
            while (i4 < length2) {
                int i7 = i4 + iArrayOffset;
                if (i7 >= i6 || (cCharAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                bArrArray[i7] = (byte) cCharAt;
                i4++;
            }
            if (i4 == length2) {
                i = iArrayOffset + length2;
            } else {
                i = iArrayOffset + i4;
                while (i4 < length2) {
                    char cCharAt4 = charSequence.charAt(i4);
                    if (cCharAt4 >= 128 || i >= i6) {
                        if (cCharAt4 < 2048 && i <= i6 - 2) {
                            int i8 = i + 1;
                            bArrArray[i] = (byte) ((cCharAt4 >>> 6) | 960);
                            i = i8 + 1;
                            bArrArray[i8] = (byte) ((cCharAt4 & '?') | 128);
                        } else {
                            if ((cCharAt4 >= 55296 && 57343 >= cCharAt4) || i > i6 - 3) {
                                if (i > i6 - 4) {
                                    StringBuilder sb = new StringBuilder(37);
                                    sb.append("Failed writing ");
                                    sb.append(cCharAt4);
                                    sb.append(" at index ");
                                    sb.append(i);
                                    throw new ArrayIndexOutOfBoundsException(sb.toString());
                                }
                                int i9 = i4 + 1;
                                if (i9 != charSequence.length()) {
                                    char cCharAt5 = charSequence.charAt(i9);
                                    if (Character.isSurrogatePair(cCharAt4, cCharAt5)) {
                                        int codePoint2 = Character.toCodePoint(cCharAt4, cCharAt5);
                                        int i10 = i + 1;
                                        bArrArray[i] = (byte) ((codePoint2 >>> 18) | 240);
                                        int i11 = i10 + 1;
                                        bArrArray[i10] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                                        int i12 = i11 + 1;
                                        bArrArray[i11] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                                        i = i12 + 1;
                                        bArrArray[i12] = (byte) ((codePoint2 & 63) | 128);
                                        i4 = i9;
                                    } else {
                                        i4 = i9;
                                    }
                                }
                                StringBuilder sb2 = new StringBuilder(39);
                                sb2.append("Unpaired surrogate at index ");
                                sb2.append(i4 - 1);
                                throw new IllegalArgumentException(sb2.toString());
                            }
                            int i13 = i + 1;
                            bArrArray[i] = (byte) ((cCharAt4 >>> '\f') | 480);
                            int i14 = i13 + 1;
                            bArrArray[i13] = (byte) (((cCharAt4 >>> 6) & 63) | 128);
                            i2 = i14 + 1;
                            bArrArray[i14] = (byte) ((cCharAt4 & '?') | 128);
                        }
                        i4++;
                    } else {
                        i2 = i + 1;
                        bArrArray[i] = (byte) cCharAt4;
                    }
                    i = i2;
                    i4++;
                }
            }
            byteBuffer.position(i - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e);
            throw bufferOverflowException;
        }
    }

    public static int q(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int r(int i) {
        return t(i << 3);
    }

    public static int s(int i) {
        if (i >= 0) {
            return t(i);
        }
        return 10;
    }

    public static int t(int i) {
        if ((i & Base64.SIGN) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public final void b(int i, c14 c14Var) throws IOException {
        f((i << 3) | 2);
        if (c14Var.e < 0) {
            c14Var.d();
        }
        f(c14Var.e);
        c14Var.b(this);
    }

    public final void c(int i, String str) throws IOException {
        f((i << 3) | 2);
        try {
            int iT = t(str.length());
            if (iT != t(str.length() * 3)) {
                f(a(str));
                m(str, this.a);
                return;
            }
            int iPosition = this.a.position();
            if (this.a.remaining() < iT) {
                throw new x04(iPosition + iT, this.a.limit());
            }
            this.a.position(iPosition + iT);
            m(str, this.a);
            int iPosition2 = this.a.position();
            this.a.position(iPosition);
            f((iPosition2 - iPosition) - iT);
            this.a.position(iPosition2);
        } catch (BufferOverflowException e) {
            x04 x04Var = new x04(this.a.position(), this.a.limit());
            x04Var.initCause(e);
            throw x04Var;
        }
    }

    public final void d(int i, byte[] bArr) throws IOException {
        f((i << 3) | 2);
        f(bArr.length);
        int length = bArr.length;
        if (this.a.remaining() < length) {
            throw new x04(this.a.position(), this.a.limit());
        }
        this.a.put(bArr, 0, length);
    }

    public final void e(int i) throws IOException {
        byte b = (byte) i;
        if (!this.a.hasRemaining()) {
            throw new x04(this.a.position(), this.a.limit());
        }
        this.a.put(b);
    }

    public final void f(int i) throws IOException {
        while ((i & Base64.SIGN) != 0) {
            e((i & 127) | 128);
            i >>>= 7;
        }
        e(i);
    }

    public final void j(int i, int i2) throws IOException {
        f((i << 3) | i2);
    }

    public final void k(int i, int i2) throws IOException {
        f((i << 3) | 0);
        if (i2 >= 0) {
            f(i2);
        } else {
            p(i2);
        }
    }

    public final void n(int i, xy3 xy3Var) throws IOException {
        zw3 eVar;
        if (this.b != null) {
            if (this.c != this.a.position()) {
                this.b.c(this.a.array(), this.c, this.a.position() - this.c);
            }
            zw3 zw3Var = this.b;
            zw3Var.h(i, xy3Var);
            zw3Var.b();
            this.c = this.a.position();
        }
        ByteBuffer byteBuffer = this.a;
        Logger logger = zw3.b;
        if (byteBuffer.hasArray()) {
            eVar = new zw3.b(byteBuffer);
        } else {
            if (!byteBuffer.isDirect() || byteBuffer.isReadOnly()) {
                throw new IllegalArgumentException("ByteBuffer is read-only");
            }
            eVar = h04.g ? new zw3.e(byteBuffer) : new zw3.d(byteBuffer);
        }
        this.b = eVar;
        this.c = this.a.position();
        zw3 zw3Var2 = this.b;
        zw3Var2.h(i, xy3Var);
        zw3Var2.b();
        this.c = this.a.position();
    }

    public final void o(int i, long j) throws IOException {
        f((i << 3) | 0);
        p(j);
    }

    public final void p(long j) throws IOException {
        while (((-128) & j) != 0) {
            e((((int) j) & 127) | 128);
            j >>>= 7;
        }
        e((int) j);
    }
}
