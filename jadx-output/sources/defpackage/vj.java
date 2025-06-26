package defpackage;

import android.util.Log;

/* loaded from: classes.dex */
public abstract class vj {
    public static vj a;

    public static class a extends vj {
        public int b;

        public a(int i) {
            this.b = i;
        }

        @Override // defpackage.vj
        public void a(String str, String str2, Throwable... thArr) {
            if (this.b <= 3) {
                if (thArr.length >= 1) {
                    Log.d(str, str2, thArr[0]);
                } else {
                    Log.d(str, str2);
                }
            }
        }

        @Override // defpackage.vj
        public void b(String str, String str2, Throwable... thArr) {
            if (this.b <= 6) {
                if (thArr.length >= 1) {
                    Log.e(str, str2, thArr[0]);
                } else {
                    Log.e(str, str2);
                }
            }
        }

        @Override // defpackage.vj
        public void d(String str, String str2, Throwable... thArr) {
            if (this.b <= 4) {
                if (thArr.length >= 1) {
                    Log.i(str, str2, thArr[0]);
                } else {
                    Log.i(str, str2);
                }
            }
        }

        @Override // defpackage.vj
        public void f(String str, String str2, Throwable... thArr) {
            if (this.b <= 5) {
                if (thArr.length >= 1) {
                    Log.w(str, str2, thArr[0]);
                } else {
                    Log.w(str, str2);
                }
            }
        }
    }

    public static synchronized vj c() {
        if (a == null) {
            a = new a(3);
        }
        return a;
    }

    public static String e(String str) {
        int length = str.length();
        StringBuilder sbW = jo.w(23, "WM-");
        if (length >= 20) {
            sbW.append(str.substring(0, 20));
        } else {
            sbW.append(str);
        }
        return sbW.toString();
    }

    public abstract void a(String str, String str2, Throwable... thArr);

    public abstract void b(String str, String str2, Throwable... thArr);

    public abstract void d(String str, String str2, Throwable... thArr);

    public abstract void f(String str, String str2, Throwable... thArr);
}
