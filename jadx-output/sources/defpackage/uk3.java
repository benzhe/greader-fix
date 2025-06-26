package defpackage;

/* loaded from: classes.dex */
public final class uk3 {
    public static final byte[] a = {0, 0, 0, 1};
    public static final int[] b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    public static final int[] c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static int a(bl3 bl3Var) {
        int iA = bl3Var.a(4);
        if (iA == 15) {
            return bl3Var.a(24);
        }
        c50.j(iA < 13);
        return b[iA];
    }
}
