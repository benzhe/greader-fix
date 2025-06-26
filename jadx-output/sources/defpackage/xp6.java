package defpackage;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.home.HomeBaseActivity;
import com.noinnion.android.greader.ui.home.HomeBaseActivity.b;

/* loaded from: classes2.dex */
public final class xp6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ HomeBaseActivity e;

    public xp6(HomeBaseActivity homeBaseActivity) {
        this.e = homeBaseActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        HomeBaseActivity homeBaseActivity = this.e;
        int i2 = HomeBaseActivity.O;
        jq6 jq6Var = new jq6(homeBaseActivity.getApplicationContext());
        jq6Var.b.b("DEFAULT_FINISHED_EVENT", homeBaseActivity.new b());
        jq6Var.b.b("DEFAULT_ERROR_EVENT", homeBaseActivity.new b());
        homeBaseActivity.w = ProgressDialog.show(homeBaseActivity, null, homeBaseActivity.getText(R.string.msg_logout_running), true, false);
        jq6Var.e(null);
        homeBaseActivity.J = jq6Var;
    }
}
