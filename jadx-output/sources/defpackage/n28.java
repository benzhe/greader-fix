package defpackage;

/* loaded from: classes2.dex */
public class n28 extends r28 {
    @Override // defpackage.m28
    public int b(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        if (i2 < 161) {
            return -1;
        }
        return (((i2 - 161) * 94) + (bArr[i + 1] & 255)) - 161;
    }
}
