package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class r33 implements sw2 {
    public final p33 a;
    public final p33 b;

    public r33(byte[] bArr) throws InvalidKeyException {
        this.a = b(bArr, 1);
        this.b = b(bArr, 0);
    }

    @Override // defpackage.sw2
    public byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > (Integer.MAX_VALUE - this.a.g()) - 16) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.a.g() + bArr.length + 16);
        if (byteBufferAllocate.remaining() < this.a.g() + bArr.length + 16) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        int iPosition = byteBufferAllocate.position();
        this.a.c(byteBufferAllocate, bArr);
        byteBufferAllocate.position(iPosition);
        byte[] bArr3 = new byte[this.a.g()];
        byteBufferAllocate.get(bArr3);
        byteBufferAllocate.limit(byteBufferAllocate.limit() - 16);
        byte b = 0;
        byte[] bArr4 = bArr2 == null ? new byte[0] : bArr2;
        byte[] bArr5 = new byte[32];
        this.b.i(bArr3, 0).get(bArr5);
        int length = bArr4.length % 16 == 0 ? bArr4.length : (bArr4.length + 16) - (bArr4.length % 16);
        int iRemaining = byteBufferAllocate.remaining();
        int i = iRemaining % 16;
        int i2 = (i == 0 ? iRemaining : (iRemaining + 16) - i) + length;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(i2 + 16).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.put(bArr4);
        byteBufferOrder.position(length);
        byteBufferOrder.put(byteBufferAllocate);
        byteBufferOrder.position(i2);
        byteBufferOrder.putLong(bArr4.length);
        byteBufferOrder.putLong(iRemaining);
        byte[] bArrArray = byteBufferOrder.array();
        long jE4 = (c50.e4(bArr5, 0) >> 0) & 67108863 & 67108863;
        long jE42 = (c50.e4(bArr5, 3) >> 2) & 67108863 & 67108611;
        long jE43 = (c50.e4(bArr5, 6) >> 4) & 67108863 & 67092735;
        long jE44 = (c50.e4(bArr5, 9) >> 6) & 67108863 & 66076671;
        long jE45 = (c50.e4(bArr5, 12) >> 8) & 67108863 & 1048575;
        long j = jE42 * 5;
        long j2 = jE43 * 5;
        long j3 = jE44 * 5;
        long j4 = jE45 * 5;
        int i3 = 17;
        byte[] bArr6 = new byte[17];
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        int i4 = 0;
        while (i4 < bArrArray.length) {
            int iMin = Math.min(16, bArrArray.length - i4);
            System.arraycopy(bArrArray, i4, bArr6, b, iMin);
            bArr6[iMin] = 1;
            if (iMin != 16) {
                Arrays.fill(bArr6, iMin + 1, i3, b);
            }
            long jE46 = j9 + ((c50.e4(bArr6, b) >> b) & 67108863);
            long jE47 = j5 + ((c50.e4(bArr6, 3) >> 2) & 67108863);
            long jE48 = j6 + ((c50.e4(bArr6, 6) >> 4) & 67108863);
            long jE49 = j7 + ((c50.e4(bArr6, 9) >> 6) & 67108863);
            long jE410 = j8 + (((c50.e4(bArr6, 12) >> 8) & 67108863) | (bArr6[16] << 24));
            long j10 = (jE410 * j) + (jE49 * j2) + (jE48 * j3) + (jE47 * j4) + (jE46 * jE4);
            long j11 = (jE410 * j2) + (jE49 * j3) + (jE48 * j4) + (jE47 * jE4) + (jE46 * jE42);
            long j12 = (jE410 * j3) + (jE49 * j4) + (jE48 * jE4) + (jE47 * jE42) + (jE46 * jE43);
            long j13 = (jE410 * j4) + (jE49 * jE4) + (jE48 * jE42) + (jE47 * jE43) + (jE46 * jE44);
            long j14 = jE410 * jE4;
            long j15 = j11 + (j10 >> 26);
            long j16 = j12 + (j15 >> 26);
            long j17 = j13 + (j16 >> 26);
            long j18 = j14 + (jE49 * jE42) + (jE48 * jE43) + (jE47 * jE44) + (jE46 * jE45) + (j17 >> 26);
            long j19 = j18 >> 26;
            j8 = j18 & 67108863;
            long j20 = (j19 * 5) + (j10 & 67108863);
            i4 += 16;
            j6 = j16 & 67108863;
            j7 = j17 & 67108863;
            i3 = 17;
            j9 = j20 & 67108863;
            j5 = (j15 & 67108863) + (j20 >> 26);
            b = 0;
        }
        long j21 = j6 + (j5 >> 26);
        long j22 = j21 & 67108863;
        long j23 = j7 + (j21 >> 26);
        long j24 = j23 & 67108863;
        long j25 = j8 + (j23 >> 26);
        long j26 = j25 & 67108863;
        long j27 = ((j25 >> 26) * 5) + j9;
        long j28 = j27 >> 26;
        long j29 = j27 & 67108863;
        long j30 = (j5 & 67108863) + j28;
        long j31 = j29 + 5;
        long j32 = j31 & 67108863;
        long j33 = j30 + (j31 >> 26);
        long j34 = j22 + (j33 >> 26);
        long j35 = j24 + (j34 >> 26);
        long j36 = (j26 + (j35 >> 26)) - 67108864;
        long j37 = j36 >> 63;
        long j38 = j29 & j37;
        long j39 = j30 & j37;
        long j40 = j22 & j37;
        long j41 = j24 & j37;
        long j42 = j26 & j37;
        long j43 = ~j37;
        long j44 = j39 | (j33 & 67108863 & j43);
        long j45 = j40 | (j34 & 67108863 & j43);
        long j46 = (j35 & 67108863 & j43) | j41;
        long j47 = (j38 | (j32 & j43) | (j44 << 26)) & 4294967295L;
        long j48 = ((j44 >> 6) | (j45 << 20)) & 4294967295L;
        long j49 = ((j45 >> 12) | (j46 << 14)) & 4294967295L;
        long j50 = ((((j36 & j43) | j42) << 8) | (j46 >> 18)) & 4294967295L;
        long jE411 = c50.e4(bArr5, 16) + j47;
        long j51 = jE411 & 4294967295L;
        long jE412 = c50.e4(bArr5, 20) + j48 + (jE411 >> 32);
        long jE413 = c50.e4(bArr5, 24) + j49 + (jE412 >> 32);
        long jE414 = (c50.e4(bArr5, 28) + j50 + (jE413 >> 32)) & 4294967295L;
        byte[] bArr7 = new byte[16];
        c50.u2(bArr7, j51, 0);
        c50.u2(bArr7, jE412 & 4294967295L, 4);
        c50.u2(bArr7, jE413 & 4294967295L, 8);
        c50.u2(bArr7, jE414, 12);
        byteBufferAllocate.limit(byteBufferAllocate.limit() + 16);
        byteBufferAllocate.put(bArr7);
        return byteBufferAllocate.array();
    }

    public abstract p33 b(byte[] bArr, int i) throws InvalidKeyException;
}
