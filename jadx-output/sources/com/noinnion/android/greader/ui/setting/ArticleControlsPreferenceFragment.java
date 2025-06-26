package com.noinnion.android.greader.ui.setting;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.setting.ArticleControlsPreferenceFragment;
import defpackage.a0;
import defpackage.dx6;
import defpackage.n56;
import defpackage.t75;
import defpackage.wb;

/* loaded from: classes2.dex */
public class ArticleControlsPreferenceFragment extends dx6 {
    public static final /* synthetic */ int l = 0;

    public static void j(FragmentActivity fragmentActivity, final DialogInterface.OnDismissListener onDismissListener) {
        t75 t75Var = new t75(fragmentActivity);
        t75Var.n(fragmentActivity.getLayoutInflater().inflate(R.layout.article_controls_preference, (ViewGroup) null));
        t75Var.d(android.R.string.ok, null);
        final wb wbVarO = fragmentActivity.o();
        t75Var.l(R.string.preference_article_controls);
        a0 a0VarA = t75Var.a();
        a0VarA.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: ss6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                wb wbVar = wbVarO;
                DialogInterface.OnDismissListener onDismissListener2 = onDismissListener;
                int i = ArticleControlsPreferenceFragment.l;
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
        d(R.xml.pref_article_controls);
        n56.y2(getActivity(), R.string.ga_screen_preference_article_controls);
    }
}
