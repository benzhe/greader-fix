package defpackage;

import defpackage.v18;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class c28 extends v18 {
    public static final byte[] d = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 0, 1, 7, 1, 1, 1, 1, 1, 1, 5, 1, 5, 0, 5, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 1, 7, 0, 7, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 1, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 1, 6, 6, 6, 6, 6, 7, 7, 7};
    public static final byte[] e = {0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 1, 1, 3, 3, 0, 3, 3, 3, 1, 2, 1, 2, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 1, 3, 1, 1, 1, 3, 0, 3, 1, 3, 1, 1, 3, 3};
    public v18.a a;
    public byte b;
    public int[] c = new int[4];

    public c28() {
        f();
    }

    @Override // defpackage.v18
    public String a() {
        return s18.r;
    }

    @Override // defpackage.v18
    public float b() {
        int[] iArr;
        float f;
        if (this.a == v18.a.NOT_ME) {
            return 0.01f;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            iArr = this.c;
            if (i >= iArr.length) {
                break;
            }
            i2 += iArr[i];
            i++;
        }
        if (i2 <= 0) {
            f = 0.0f;
        } else {
            float f2 = i2;
            f = ((iArr[3] * 1.0f) / f2) - ((iArr[1] * 20.0f) / f2);
        }
        return (f >= 0.0f ? f : 0.0f) * 0.5f;
    }

    @Override // defpackage.v18
    public v18.a c() {
        return this.a;
    }

    @Override // defpackage.v18
    public v18.a d(byte[] bArr, int i, int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i2);
        int i3 = i2 + i;
        int i4 = 0;
        int i5 = i;
        boolean z = false;
        while (true) {
            if (i >= i3) {
                break;
            }
            byte b = bArr[i];
            if (b == 62) {
                z = false;
            } else if (b == 60) {
                z = true;
            }
            if (((b & 128) == 0) && e(b)) {
                if (i > i5 && !z) {
                    byteBufferAllocate.put(bArr, i5, i - i5);
                    byteBufferAllocate.put((byte) 32);
                }
                i5 = i + 1;
            }
            i++;
        }
        if (!z && i > i5) {
            byteBufferAllocate.put(bArr, i5, i - i5);
        }
        byte[] bArrArray = byteBufferAllocate.array();
        int iPosition = byteBufferAllocate.position();
        while (true) {
            if (i4 >= iPosition) {
                break;
            }
            byte b2 = d[bArrArray[i4] & 255];
            byte b3 = e[(this.b * 8) + b2];
            if (b3 == 0) {
                this.a = v18.a.NOT_ME;
                break;
            }
            int[] iArr = this.c;
            iArr[b3] = iArr[b3] + 1;
            this.b = b2;
            i4++;
        }
        return this.a;
    }

    @Override // defpackage.v18
    public void f() {
        this.a = v18.a.DETECTING;
        this.b = (byte) 1;
        int i = 0;
        while (true) {
            int[] iArr = this.c;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }
}
