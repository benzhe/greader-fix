package defpackage;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public class f7 extends u7 {
    public static final /* synthetic */ int b = 0;

    public class a implements Runnable {
        public final /* synthetic */ String[] e;
        public final /* synthetic */ Activity f;
        public final /* synthetic */ int g;

        public a(String[] strArr, Activity activity, int i) {
            this.e = strArr;
            this.f = activity;
            this.g = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.e.length];
            PackageManager packageManager = this.f.getPackageManager();
            String packageName = this.f.getPackageName();
            int length = this.e.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.e[i], packageName);
            }
            ((b) this.f).onRequestPermissionsResult(this.g, this.e, iArr);
        }
    }

    public interface b {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    public interface c {
        void a(int i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(Activity activity, String[] strArr, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof c) {
                ((c) activity).a(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof b) {
            new Handler(Looper.getMainLooper()).post(new a(strArr, activity, i));
        }
    }
}
