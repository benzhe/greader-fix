package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.michaelflisar.gdprdialog.GDPRCustomTexts;
import com.michaelflisar.gdprdialog.R$id;
import com.michaelflisar.gdprdialog.R$layout;
import com.michaelflisar.gdprdialog.R$string;
import defpackage.hm6;
import java.util.Objects;

/* loaded from: classes.dex */
public class tl6 extends j0 {
    public boolean e;
    public hm6 f;

    public class a extends o65 {
        public a(Context context, int i) {
            super(context, i);
        }

        @Override // android.app.Dialog
        public void onBackPressed() {
            if (tl6.this.f.a() || tl6.this.f.a.o) {
                return;
            }
            dismiss();
        }
    }

    public class b extends i0 {
        public b(Context context, int i) {
            super(context, i);
        }

        @Override // android.app.Dialog
        public void onBackPressed() {
            if (tl6.this.f.a() || tl6.this.f.a.o) {
                return;
            }
            dismiss();
        }
    }

    public final void d() {
        if (!(this.f.e == null)) {
            dismiss();
        } else if (getActivity() != null) {
            getActivity().finishAndRemoveTask();
        }
        this.f.e();
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setCancelable(false);
        this.f.g(getActivity(), this.e);
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f = new hm6(getArguments(), bundle);
        this.e = getArguments().getBoolean("ARG_PARENT_MUST_IMPLEMENT_CALLBACK");
        GDPRCustomTexts gDPRCustomTexts = this.f.a.t;
        if (gDPRCustomTexts.b() && gDPRCustomTexts.a(getContext()).isEmpty()) {
            setStyle(1, this.f.a.p);
        } else {
            setStyle(0, this.f.a.p);
        }
    }

    @Override // defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) {
        if (!this.f.a.n) {
            return new b(getContext(), getTheme());
        }
        a aVar = new a(getContext(), getTheme());
        aVar.setOnShowListener(new DialogInterface.OnShowListener() { // from class: ol6
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) throws Resources.NotFoundException {
                tl6 tl6Var = this.a;
                Objects.requireNonNull(tl6Var);
                FrameLayout frameLayout = (FrameLayout) ((o65) dialogInterface).findViewById(R$id.design_bottom_sheet);
                BottomSheetBehavior bottomSheetBehaviorH = BottomSheetBehavior.H(frameLayout);
                bottomSheetBehaviorH.M(3);
                if (tl6Var.f.a.o) {
                    bottomSheetBehaviorH.L(frameLayout.getMeasuredHeight());
                    return;
                }
                bottomSheetBehaviorH.L(0);
                ul6 ul6Var = new ul6(tl6Var);
                Log.w("BottomSheetBehavior", "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks.");
                bottomSheetBehaviorH.N.clear();
                bottomSheetBehaviorH.N.add(ul6Var);
            }
        });
        return aVar;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R$layout.gdpr_dialog, viewGroup, false);
        this.f.b(getActivity(), viewInflate, new hm6.a() { // from class: nl6
            @Override // hm6.a
            public final void a() {
                this.a.d();
            }
        });
        GDPRCustomTexts gDPRCustomTexts = this.f.a.t;
        if (gDPRCustomTexts.b()) {
            getDialog().setTitle(gDPRCustomTexts.a(getContext()));
        } else {
            getDialog().setTitle(R$string.gdpr_dialog_title);
        }
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f.e();
        super.onDestroy();
    }

    @Override // defpackage.rb, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f.a() || this.f.a.o) {
            return;
        }
        d();
        super.onDismiss(dialogInterface);
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f.f(bundle);
    }
}
