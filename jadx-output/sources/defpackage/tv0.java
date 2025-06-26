package defpackage;

/* loaded from: classes.dex */
public final class tv0 extends h21 {
    public static final tv0 c = new tv0();

    @Override // defpackage.h21
    public final d91 b(String str, byte[] bArr, String str2) {
        return "moov".equals(str) ? new fb1() : "mvhd".equals(str) ? new ea1() : new fc1(str);
    }
}
