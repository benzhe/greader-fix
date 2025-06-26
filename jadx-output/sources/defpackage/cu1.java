package defpackage;

import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final /* synthetic */ class cu1 implements cv2 {
    public static final cv2 a = new cu1();

    @Override // defpackage.cv2
    public final aw2 a(Object obj) {
        return vt2.a(((ExecutionException) obj).getCause());
    }
}
