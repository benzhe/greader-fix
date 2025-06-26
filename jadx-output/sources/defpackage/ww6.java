package defpackage;

import android.R;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.noinnion.android.reader.R$array;
import com.noinnion.android.reader.R$id;
import com.noinnion.android.reader.R$layout;
import com.noinnion.android.reader.R$string;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class ww6 extends qw6 {
    public static final /* synthetic */ int g = 0;
    public Spinner e;
    public c f;

    public class a implements DialogInterface.OnClickListener {
        public a(ww6 ww6Var) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public class b implements DialogInterface.OnShowListener {
        public final /* synthetic */ a0 a;

        public class a implements View.OnClickListener {
            public a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                ww6 ww6Var = ww6.this;
                int i = ww6.g;
                String str = ww6Var.getResources().getStringArray(R$array.translation_language_values)[ww6Var.e.getSelectedItemPosition()];
                iw6.V(ww6Var.getActivity().getApplicationContext(), "translation_language", str);
                c cVar = ww6Var.f;
                if (cVar != null) {
                    cVar.a(str);
                }
                ww6Var.dismiss();
            }
        }

        public b(a0 a0Var) {
            this.a = a0Var;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            this.a.f(-1).setOnClickListener(new a());
        }
    }

    public interface c {
        void a(String str);
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) throws Resources.NotFoundException {
        super.onActivityCreated(bundle);
        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(getActivity(), R$array.translation_language_labels, R.layout.simple_spinner_item);
        arrayAdapterCreateFromResource.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        this.e.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
        String[] stringArray = getResources().getStringArray(R$array.translation_language_values);
        String strF = iw6.F(getActivity(), "translation_language");
        if (strF == null || strF.length() == 0) {
            strF = "en";
        }
        int i = 0;
        for (String str : stringArray) {
            if (str.equals(strF)) {
                this.e.setSelection(i);
                return;
            }
            i++;
        }
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) {
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        t75Var.m(R$string.menu_translate);
        t75 t75VarH = t75Var.j(R$string.txt_save, null).h(R.string.cancel, new a(this));
        View viewInflate = getActivity().getLayoutInflater().inflate(R$layout.dialog_translate, (ViewGroup) null);
        t75VarH.n(viewInflate);
        a0 a0VarA = t75VarH.a();
        a0VarA.setOnShowListener(new b(a0VarA));
        this.e = (Spinner) viewInflate.findViewById(R$id.offline_spinner);
        return a0VarA;
    }
}
