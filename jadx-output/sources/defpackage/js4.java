package defpackage;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public final class js4 extends my4 {
    public long c;
    public String d;
    public AccountManager e;
    public Boolean f;
    public long g;

    public js4(rx4 rx4Var) {
        super(rx4Var);
    }

    @Override // defpackage.my4
    public final boolean f() {
        Calendar calendar = Calendar.getInstance();
        this.c = TimeUnit.MINUTES.convert(calendar.get(16) + calendar.get(15), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        this.d = jo.t(new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length()), lowerCase, "-", lowerCase2);
        return false;
    }

    public final long n() {
        i();
        return this.c;
    }

    public final String p() {
        i();
        return this.d;
    }

    public final long q() {
        d();
        return this.g;
    }

    public final boolean r() throws OperationCanceledException, IOException, AuthenticatorException {
        Account[] result;
        d();
        long jA = this.a.n.a();
        if (jA - this.g > DateUtils.MILLIS_PER_DAY) {
            this.f = null;
        }
        Boolean bool = this.f;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (u7.a(this.a.a, "android.permission.GET_ACCOUNTS") != 0) {
            this.a.a().j.a("Permission error checking for dasher/unicorn accounts");
            this.g = jA;
            this.f = Boolean.FALSE;
            return false;
        }
        if (this.e == null) {
            this.e = AccountManager.get(this.a.a);
        }
        try {
            result = this.e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
        } catch (AuthenticatorException | OperationCanceledException | IOException e) {
            this.a.a().g.b("Exception checking account types", e);
        }
        if (result != null && result.length > 0) {
            this.f = Boolean.TRUE;
            this.g = jA;
            return true;
        }
        Account[] result2 = this.e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
        if (result2 != null && result2.length > 0) {
            this.f = Boolean.TRUE;
            this.g = jA;
            return true;
        }
        this.g = jA;
        this.f = Boolean.FALSE;
        return false;
    }
}
