package defpackage;

import androidx.cardview.widget.CardView;

/* loaded from: classes.dex */
public class a4 implements c4 {
    public final d4 a(b4 b4Var) {
        return (d4) ((CardView.a) b4Var).a;
    }

    public void b(b4 b4Var, float f) {
        d4 d4VarA = a(b4Var);
        CardView.a aVar = (CardView.a) b4Var;
        boolean useCompatPadding = CardView.this.getUseCompatPadding();
        boolean zA = aVar.a();
        if (f != d4VarA.e || d4VarA.f != useCompatPadding || d4VarA.g != zA) {
            d4VarA.e = f;
            d4VarA.f = useCompatPadding;
            d4VarA.g = zA;
            d4VarA.c(null);
            d4VarA.invalidateSelf();
        }
        c(b4Var);
    }

    public void c(b4 b4Var) {
        CardView.a aVar = (CardView.a) b4Var;
        if (!CardView.this.getUseCompatPadding()) {
            aVar.b(0, 0, 0, 0);
            return;
        }
        float f = a(b4Var).e;
        float f2 = a(b4Var).a;
        int iCeil = (int) Math.ceil(e4.a(f, f2, aVar.a()));
        int iCeil2 = (int) Math.ceil(e4.b(f, f2, aVar.a()));
        aVar.b(iCeil, iCeil2, iCeil, iCeil2);
    }
}
