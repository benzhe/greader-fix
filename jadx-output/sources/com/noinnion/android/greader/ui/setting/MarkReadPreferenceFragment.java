package com.noinnion.android.greader.ui.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.setting.MarkReadPreferenceFragment;
import defpackage.a0;
import defpackage.dx6;
import defpackage.iw6;
import defpackage.lw6;
import defpackage.n56;
import defpackage.t75;
import defpackage.wb;

/* loaded from: classes2.dex */
public class MarkReadPreferenceFragment extends dx6 {
    public static final /* synthetic */ int l = 0;

    public static void j(FragmentActivity fragmentActivity, final DialogInterface.OnDismissListener onDismissListener) {
        t75 t75Var = new t75(fragmentActivity);
        t75Var.n(fragmentActivity.getLayoutInflater().inflate(R.layout.mark_read_preference, (ViewGroup) null));
        t75Var.d(android.R.string.ok, null);
        final wb wbVarO = fragmentActivity.o();
        t75Var.l(R.string.preference_category_mark_as_read);
        a0 a0VarA = t75Var.a();
        a0VarA.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: us6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                wb wbVar = wbVarO;
                DialogInterface.OnDismissListener onDismissListener2 = onDismissListener;
                int i = MarkReadPreferenceFragment.l;
                Fragment fragmentB = wbVar.b(R.id.preference_fragment);
                if (fragmentB != null) {
                    qb qbVar = new qb((xb) wbVar);
                    qbVar.q(fragmentB);
                    qbVar.c();
                }
                if (onDismissListener2 != null) {
                    onDismissListener2.onDismiss(dialogInterface);
                }
            }
        });
        a0VarA.show();
    }

    @Override // defpackage.dx6, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) throws NoSuchMethodException, SecurityException {
        super.onCreate(bundle);
        d(R.xml.pref_mark_read);
        Context applicationContext = getActivity().getApplicationContext();
        if (lw6.n(applicationContext, iw6.a0(applicationContext))) {
            PreferenceManager preferenceManager = this.e;
            PreferenceCategory preferenceCategory = (PreferenceCategory) (preferenceManager == null ? null : preferenceManager.findPreference("preference_category_mark_read"));
            PreferenceManager preferenceManager2 = this.e;
            preferenceCategory.removePreference(preferenceManager2 != null ? preferenceManager2.findPreference("show_feeds_after_mark_all") : null);
        }
        n56.y2(getActivity(), R.string.ga_screen_preference_mark_read);
    }
}
