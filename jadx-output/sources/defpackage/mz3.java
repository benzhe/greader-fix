package defpackage;

/* loaded from: classes.dex */
public final class mz3 {
    public final String a;
    public int b = 0;

    public mz3(String str) {
        this.a = str;
    }

    public final int a() {
        String str = this.a;
        int i = this.b;
        this.b = i + 1;
        char cCharAt = str.charAt(i);
        if (cCharAt < 55296) {
            return cCharAt;
        }
        int i2 = cCharAt & 8191;
        int i3 = 13;
        while (true) {
            String str2 = this.a;
            int i4 = this.b;
            this.b = i4 + 1;
            char cCharAt2 = str2.charAt(i4);
            if (cCharAt2 < 55296) {
                return i2 | (cCharAt2 << i3);
            }
            i2 |= (cCharAt2 & 8191) << i3;
            i3 += 13;
        }
    }
}
