package defpackage;

import android.R;
import android.content.DialogInterface;
import android.widget.EditText;
import com.noinnion.android.greader.ui.premium.PremiumActivity;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class ns6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ PremiumActivity e;

    public ns6(PremiumActivity premiumActivity) {
        this.e = premiumActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (!(dialogInterface instanceof a0)) {
            dialogInterface = null;
        }
        a0 a0Var = (a0) dialogInterface;
        EditText editText = a0Var != null ? (EditText) a0Var.findViewById(R.id.input) : null;
        String string = co7.F(String.valueOf(editText != null ? editText.getText() : null)).toString();
        if (string.length() == 0) {
            n56.W1(this.e, com.noinnion.android.greader.reader.R.string.premium_promo_code_empty);
            return;
        }
        PremiumActivity premiumActivity = this.e;
        wo6 wo6Var = (wo6) premiumActivity.y.getValue();
        Objects.requireNonNull(wo6Var);
        im7.e(string, "code");
        go6 go6Var = wo6Var.a;
        Objects.requireNonNull(go6Var);
        im7.e(string, "code");
        ag7 ag7Var = new ag7(new fo6(go6Var, string));
        im7.d(ag7Var, "Maybe.create { emitter -…              }\n        }");
        rb7<R> rb7VarG = ag7Var.g(vo6.e);
        im7.d(rb7VarG, "promoCodeRepository.getP…      }\n                }");
        rb7 rb7VarK = rb7VarG.n(ej7.b).k(fc7.a());
        im7.d(rb7VarK, "promoCodeUseCase.getProm…dSchedulers.mainThread())");
        n56.j(bj7.e(rb7VarK, new ps6(premiumActivity), new qs6(premiumActivity), new rs6(premiumActivity)), premiumActivity);
    }
}
