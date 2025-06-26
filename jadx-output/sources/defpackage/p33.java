package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* loaded from: classes.dex */
public abstract class p33 implements i43 {
    public static final int[] c = j(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});
    public int[] a;
    public final int b;

    public p33(byte[] bArr, int i) throws InvalidKeyException {
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.a = j(bArr);
        this.b = i;
    }

    public static int b(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    public static void d(int[] iArr, int i, int i2, int i3, int i4) {
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = b(iArr[i4] ^ iArr[i], 16);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = b(iArr[i2] ^ iArr[i3], 12);
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = b(iArr[i] ^ iArr[i4], 8);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = b(iArr[i2] ^ iArr[i3], 7);
    }

    public static void e(int[] iArr, int[] iArr2) {
        int[] iArr3 = c;
        System.arraycopy(iArr3, 0, iArr, 0, iArr3.length);
        System.arraycopy(iArr2, 0, iArr, iArr3.length, 8);
    }

    public static void h(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            d(iArr, 0, 4, 8, 12);
            d(iArr, 1, 5, 9, 13);
            d(iArr, 2, 6, 10, 14);
            d(iArr, 3, 7, 11, 15);
            d(iArr, 0, 5, 10, 15);
            d(iArr, 1, 6, 11, 12);
            d(iArr, 2, 7, 8, 13);
            d(iArr, 3, 4, 9, 14);
        }
    }

    public static int[] j(byte[] bArr) {
        IntBuffer intBufferAsIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[intBufferAsIntBuffer.remaining()];
        intBufferAsIntBuffer.get(iArr);
        return iArr;
    }

    @Override // defpackage.i43
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length > Integer.MAX_VALUE - g()) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(g() + bArr.length);
        c(byteBufferAllocate, bArr);
        return byteBufferAllocate.array();
    }

    public final void c(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
        if (byteBuffer.remaining() - g() < bArr.length) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        byte[] bArrA = o43.a(g());
        byteBuffer.put(bArrA);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        int iRemaining = byteBufferWrap.remaining();
        int i = (iRemaining / 64) + 1;
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer byteBufferI = i(bArrA, this.b + i2);
            if (i2 == i - 1) {
                c50.p2(byteBuffer, byteBufferWrap, byteBufferI, iRemaining % 64);
            } else {
                c50.p2(byteBuffer, byteBufferWrap, byteBufferI, 64);
            }
        }
    }

    public abstract int[] f(int[] iArr, int i);

    public abstract int g();

    public final ByteBuffer i(byte[] bArr, int i) {
        int[] iArrF = f(j(bArr), i);
        int[] iArr = (int[]) iArrF.clone();
        h(iArr);
        for (int i2 = 0; i2 < iArrF.length; i2++) {
            iArrF[i2] = iArrF[i2] + iArr[i2];
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.asIntBuffer().put(iArrF, 0, 16);
        return byteBufferOrder;
    }
}
