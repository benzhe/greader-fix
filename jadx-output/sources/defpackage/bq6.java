package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.home.HomeBaseActivity;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class bq6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ HomeBaseActivity e;
    public final /* synthetic */ Context f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ int h;

    public bq6(HomeBaseActivity homeBaseActivity, Context context, boolean z, int i) {
        this.e = homeBaseActivity;
        this.f = context;
        this.g = z;
        this.h = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i2 = 1;
        if (i == R.id.theme_auto_dark) {
            iw6.S(this.f, "application_theme_auto_dark", !this.g);
            on6.l();
            lw6.a(this.e);
        }
        switch (i) {
            case R.id.theme_black /* 2131297044 */:
                i2 = 2;
                break;
            case R.id.theme_dark /* 2131297045 */:
                break;
            case R.id.theme_default /* 2131297046 */:
                i2 = 0;
                break;
            case R.id.theme_green /* 2131297047 */:
                i2 = 5;
                break;
            case R.id.theme_sepia /* 2131297048 */:
                i2 = 3;
                break;
            default:
                i2 = -1;
                break;
        }
        if (i2 == -1) {
            return;
        }
        if (this.g) {
            iw6.S(this.f, "application_theme_auto_dark", false);
        }
        if (i2 != this.h) {
            HomeBaseActivity homeBaseActivity = this.e;
            Method method = iw6.a;
            iw6.V(homeBaseActivity, "application_theme", String.valueOf(i2));
            on6.l();
            lw6.b(this.e, i2);
        }
    }
}
