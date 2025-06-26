package defpackage;

/* loaded from: classes2.dex */
public class i28 extends j28 {
    @Override // defpackage.j28
    public int b(byte[] bArr, int i) {
        int i2;
        if ((bArr[i] & 255) != 164 || (i2 = bArr[i + 1] & 255) < 161 || i2 > 243) {
            return -1;
        }
        return i2 - 161;
    }
}
