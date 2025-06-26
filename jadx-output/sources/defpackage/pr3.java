package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class pr3 implements Comparator {
    public static final Comparator e = new pr3();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        List<String> list = RequestConfiguration.zzadz;
        return list.indexOf((String) obj) - list.indexOf((String) obj2);
    }
}
