package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.LruCache;

/* loaded from: classes2.dex */
public final class y17 implements o17 {
    public final LruCache<String, a> a;

    public static final class a {
        public final Bitmap a;
        public final int b;

        public a(Bitmap bitmap, int i) {
            this.a = bitmap;
            this.b = i;
        }
    }

    public y17(Context context) {
        StringBuilder sb = p27.a;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.a = new x17(this, (int) ((((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * 1048576) / 7));
    }

    @Override // defpackage.o17
    public Bitmap a(String str) {
        a aVar = this.a.get(str);
        if (aVar != null) {
            return aVar.a;
        }
        return null;
    }

    @Override // defpackage.o17
    public int b() {
        return this.a.maxSize();
    }

    @Override // defpackage.o17
    public void c(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        int iB = p27.b(bitmap);
        if (iB > this.a.maxSize()) {
            this.a.remove(str);
        } else {
            this.a.put(str, new a(bitmap, iB));
        }
    }

    @Override // defpackage.o17
    public int size() {
        return this.a.size();
    }
}
