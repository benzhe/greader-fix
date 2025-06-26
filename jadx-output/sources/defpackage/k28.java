package defpackage;

/* loaded from: classes2.dex */
public class k28 extends j28 {
    @Override // defpackage.j28
    public int b(byte[] bArr, int i) {
        int i2;
        if ((bArr[i] & 255) != 130 || (i2 = bArr[i + 1] & 255) < 159 || i2 > 241) {
            return -1;
        }
        return i2 - 159;
    }
}
