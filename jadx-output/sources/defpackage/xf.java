package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class xf extends sf {
    public final /* synthetic */ yf q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xf(yf yfVar, Context context) {
        super(context);
        this.q = yfVar;
    }

    @Override // defpackage.sf, androidx.recyclerview.widget.RecyclerView.w
    public void c(View view, RecyclerView.x xVar, RecyclerView.w.a aVar) {
        yf yfVar = this.q;
        int[] iArrB = yfVar.b(yfVar.a.getLayoutManager(), view);
        int i = iArrB[0];
        int i2 = iArrB[1];
        int iCeil = (int) Math.ceil(g(Math.max(Math.abs(i), Math.abs(i2))) / 0.3356d);
        if (iCeil > 0) {
            aVar.b(i, i2, iCeil, this.j);
        }
    }

    @Override // defpackage.sf
    public float f(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // defpackage.sf
    public int g(int i) {
        return Math.min(100, super.g(i));
    }
}
