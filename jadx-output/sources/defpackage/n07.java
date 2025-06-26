package defpackage;

import android.opengl.GLES10;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public final class n07 {
    public static uz6 a;

    static {
        int[] iArr = new int[1];
        GLES10.glGetIntegerv(3379, iArr, 0);
        int iMax = Math.max(iArr[0], RecyclerView.a0.FLAG_MOVED);
        a = new uz6(iMax, iMax);
    }
}
