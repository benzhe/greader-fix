package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.michaelflisar.gdprdialog.GDPRSetup;
import com.michaelflisar.gdprdialog.R$string;
import java.util.Objects;

/* loaded from: classes.dex */
public class pl6 {
    public static pl6 f;
    public Context a = null;
    public SharedPreferences b = null;
    public c c = new a(this);
    public rl6 d = null;
    public im6 e = null;

    public class a implements c {
        public a(pl6 pl6Var) {
        }
    }

    public interface b {
        void c(rl6 rl6Var, boolean z);

        void h(em6 em6Var);
    }

    public interface c {
    }

    public static pl6 b() {
        if (f == null) {
            f = new pl6();
        }
        return f;
    }

    public rl6 a() {
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            throw new RuntimeException("You have not initialised GDPR. Plase call 'GDPR.getInstance().init(context)' once from anywhere, preferable from your application.");
        }
        if (this.d == null) {
            int i = sharedPreferences.getInt(this.a.getString(R$string.gdpr_preference), 0);
            int i2 = this.b.getInt(this.a.getString(R$string.gdpr_preference_is_in_eea_or_unknown), 0);
            this.d = new rl6(ql6.values()[i], vl6.values()[i2], this.b.getLong(this.a.getString(R$string.gdpr_preference_date), 0L), this.b.getInt(this.a.getString(R$string.gdpr_preference_app_version), 0));
        }
        return this.d;
    }

    public boolean c(rl6 rl6Var) {
        this.d = rl6Var;
        boolean zCommit = this.b.edit().putInt(this.a.getString(R$string.gdpr_preference), rl6Var.a.ordinal()).putInt(this.a.getString(R$string.gdpr_preference_is_in_eea_or_unknown), rl6Var.b.ordinal()).putLong(this.a.getString(R$string.gdpr_preference_date), rl6Var.c).putInt(this.a.getString(R$string.gdpr_preference_app_version), rl6Var.d).commit();
        c cVar = this.c;
        String.format("consent saved: %s, success: %b", rl6Var.a(), Boolean.valueOf(zCommit));
        Objects.requireNonNull((a) cVar);
        return zCommit;
    }

    public final void d(wb wbVar, GDPRSetup gDPRSetup, vl6 vl6Var) {
        tl6 tl6Var = new tl6();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ARG_SETUP", gDPRSetup);
        bundle.putInt("ARG_LOCATION", vl6Var.ordinal());
        bundle.putBoolean("ARG_PARENT_MUST_IMPLEMENT_CALLBACK", true);
        tl6Var.setArguments(bundle);
        tl6Var.show(wbVar, tl6.class.getName());
    }
}
