package defpackage;

import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.noinnion.android.reader.R$id;
import com.noinnion.android.reader.R$layout;
import com.noinnion.android.view.progress.DonutProgress;
import java.io.File;
import java.io.IOException;
import pl.droidsonroids.gif.GifImageView;
import pl.droidsonroids.gif.GifInfoHandle;

/* loaded from: classes2.dex */
public class ax6 extends qw6 {
    public static final /* synthetic */ int j = 0;
    public View e;
    public DonutProgress f;
    public GifImageView g;
    public r78 h;
    public tx6 i;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ax6.this.dismissAllowingStateLoss();
        }
    }

    public final void d(File file, Bitmap bitmap) {
        try {
            r78 r78Var = new r78(new GifInfoHandle(file.getPath(), false), null, null, true);
            this.h = r78Var;
            this.g.setImageDrawable(r78Var);
        } catch (IOException unused) {
            if (bitmap != null) {
                this.g.setImageBitmap(bitmap);
            } else {
                dismissAllowingStateLoss();
            }
        }
        this.f.setVisibility(8);
        this.g.setVisibility(0);
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) throws Resources.NotFoundException {
        super.onActivityCreated(bundle);
        String string = getArguments().getString("url");
        File fileA = hz6.j().i().a(string);
        if (fileA != null && fileA.exists()) {
            d(fileA, null);
            return;
        }
        ux6 ux6VarN = ux6.n();
        File fileA2 = ux6VarN.i().a(string);
        if (fileA2 != null && fileA2.exists()) {
            d(fileA2, null);
            return;
        }
        tx6 tx6Var = new tx6(string);
        this.i = tx6Var;
        ux6VarN.b(tx6Var);
        ux6VarN.m(string, null, null, new bx6(this), new cx6(this));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R$layout.media_gif_fragment, (ViewGroup) null);
        this.e = viewInflate;
        viewInflate.setOnClickListener(new a());
        this.f = (DonutProgress) this.e.findViewById(R$id.v_progress_bar);
        this.g = (GifImageView) this.e.findViewById(R$id.v_gif_texture_view);
        return this.e;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.i != null) {
            ux6.n().b(this.i);
        }
        r78 r78Var = this.h;
        if (r78Var == null || r78Var.a()) {
            return;
        }
        r78 r78Var2 = this.h;
        r78Var2.f = false;
        r78Var2.q.removeMessages(-1);
        r78Var2.k.e();
        r78Var2.j.recycle();
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.getWindow().setLayout(-1, -2);
            dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
    }
}
