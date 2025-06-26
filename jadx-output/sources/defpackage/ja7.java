package defpackage;

import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class ja7 {
    public static final String[] a = new String[0];
    public static final Charset b = Charset.forName("UTF-8");

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] a(Class<T> cls, T[] tArr, T[] tArr2) {
        ArrayList arrayList = new ArrayList();
        for (Object[] objArr : tArr) {
            int length = tArr2.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    T t = tArr2[i];
                    if (objArr.equals(t)) {
                        arrayList.add(t);
                        break;
                    }
                    i++;
                }
            }
        }
        return (T[]) arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, arrayList.size()));
    }
}
