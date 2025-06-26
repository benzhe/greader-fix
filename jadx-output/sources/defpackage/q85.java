package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class q85 {
    public float c;
    public WeakReference<b> e;
    public y95 f;
    public final TextPaint a = new TextPaint(1);
    public final aa5 b = new a();
    public boolean d = true;

    public class a extends aa5 {
        public a() {
        }

        @Override // defpackage.aa5
        public void a(int i) {
            q85 q85Var = q85.this;
            q85Var.d = true;
            b bVar = q85Var.e.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // defpackage.aa5
        public void b(Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            q85 q85Var = q85.this;
            q85Var.d = true;
            b bVar = q85Var.e.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    public interface b {
        void a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public q85(b bVar) {
        this.e = new WeakReference<>(null);
        this.e = new WeakReference<>(bVar);
    }

    public float a(String str) {
        if (!this.d) {
            return this.c;
        }
        float fMeasureText = str == null ? 0.0f : this.a.measureText((CharSequence) str, 0, str.length());
        this.c = fMeasureText;
        this.d = false;
        return fMeasureText;
    }

    public void b(y95 y95Var, Context context) {
        if (this.f != y95Var) {
            this.f = y95Var;
            if (y95Var != null) {
                TextPaint textPaint = this.a;
                aa5 aa5Var = this.b;
                y95Var.a();
                y95Var.d(textPaint, y95Var.n);
                y95Var.b(context, new z95(y95Var, textPaint, aa5Var));
                b bVar = this.e.get();
                if (bVar != null) {
                    this.a.drawableState = bVar.getState();
                }
                y95Var.c(context, this.a, this.b);
                this.d = true;
            }
            b bVar2 = this.e.get();
            if (bVar2 != null) {
                bVar2.a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }
}
