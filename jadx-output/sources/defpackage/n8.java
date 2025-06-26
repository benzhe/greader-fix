package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import defpackage.d0;
import defpackage.j9;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class n8 {
    public ConcurrentHashMap<Long, x7> a = new ConcurrentHashMap<>();

    public interface a<T> {
        int a(T t);

        boolean b(T t);
    }

    public static <T> T e(T[] tArr, int i, a<T> aVar) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int iAbs = (Math.abs(aVar.a(t2) - i2) * 2) + (aVar.b(t2) == z ? 0 : 1);
            if (t == null || i3 > iAbs) {
                t = t2;
                i3 = iAbs;
            }
        }
        return t;
    }

    public Typeface a(Context context, x7 x7Var, Resources resources, int i) {
        throw null;
    }

    public Typeface b(Context context, CancellationSignal cancellationSignal, j9.c[] cVarArr, int i) {
        throw null;
    }

    public Typeface c(Context context, InputStream inputStream) {
        File fileK = d0.h.K(context);
        if (fileK == null) {
            return null;
        }
        try {
            if (d0.h.s(fileK, inputStream)) {
                return Typeface.createFromFile(fileK.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileK.delete();
        }
    }

    public Typeface d(Context context, Resources resources, int i, String str, int i2) {
        File fileK = d0.h.K(context);
        if (fileK == null) {
            return null;
        }
        try {
            if (d0.h.r(fileK, resources, i)) {
                return Typeface.createFromFile(fileK.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileK.delete();
        }
    }
}
