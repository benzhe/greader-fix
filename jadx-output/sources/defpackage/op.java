package defpackage;

/* loaded from: classes.dex */
public final class op {
    public static final String a = String.valueOf(Long.MIN_VALUE).substring(1);
    public static final String b = String.valueOf(Long.MAX_VALUE);

    public static int a(char[] cArr, int i, int i2) {
        int iB = cArr[(i + i2) - 1] - '0';
        switch (i2) {
            case 9:
                iB = jo.b(cArr[i], -48, 100000000, iB);
                i++;
            case 8:
                iB = jo.b(cArr[i], -48, 10000000, iB);
                i++;
            case 7:
                iB = jo.b(cArr[i], -48, 1000000, iB);
                i++;
            case 6:
                iB = jo.b(cArr[i], -48, 100000, iB);
                i++;
            case 5:
                iB = jo.b(cArr[i], -48, 10000, iB);
                i++;
            case 4:
                iB = jo.b(cArr[i], -48, 1000, iB);
                i++;
            case 3:
                iB = jo.b(cArr[i], -48, 100, iB);
                i++;
            case 2:
                return jo.b(cArr[i], -48, 10, iB);
            default:
                return iB;
        }
    }

    public static long b(char[] cArr, int i, int i2) {
        int i3 = i2 - 9;
        return (a(cArr, i, i3) * 1000000000) + a(cArr, i + i3, 9);
    }
}
