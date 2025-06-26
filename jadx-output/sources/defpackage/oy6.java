package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/* loaded from: classes2.dex */
public final class oy6 implements Runnable {
    public final /* synthetic */ Context e;
    public final /* synthetic */ int f;
    public final /* synthetic */ CharSequence g;

    public oy6(Context context, int i, CharSequence charSequence) {
        this.e = context;
        this.f = i;
        this.g = charSequence;
    }

    @Override // java.lang.Runnable
    public void run() {
        LinearLayout linearLayout;
        Context context = this.e;
        if (context == null) {
            return;
        }
        int i = this.f;
        Toast toastMakeText = Toast.makeText(context, this.g, 0);
        View view = toastMakeText.getView();
        LinearLayout linearLayout2 = null;
        if (view instanceof LinearLayout) {
            LinearLayout linearLayout3 = (LinearLayout) view;
            if (linearLayout3.getChildCount() == 1) {
                View childAt = linearLayout3.getChildAt(0);
                if ((childAt instanceof TextView) && (childAt.getLayoutParams() instanceof LinearLayout.LayoutParams)) {
                    linearLayout2 = childAt;
                }
            }
            LinearLayout linearLayout4 = linearLayout2;
            linearLayout2 = linearLayout3;
            linearLayout = linearLayout4;
        } else {
            linearLayout = null;
        }
        if (linearLayout2 == null || linearLayout == null) {
            Log.w("DEBUG", jy6.c(3) + "failed to create image toast layout, using usual toast");
        } else {
            ((LinearLayout.LayoutParams) linearLayout.getLayoutParams()).gravity = 16;
            int iO0 = n56.o0(context, 25.0f);
            int iO02 = n56.o0(context, 15.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iO0, iO0);
            layoutParams.setMargins(0, 0, iO02, 0);
            layoutParams.gravity = 16;
            ImageView imageView = new ImageView(context);
            imageView.setImageResource(i);
            imageView.setLayoutParams(layoutParams);
            linearLayout2.setOrientation(0);
            linearLayout2.addView(imageView, 0);
        }
        toastMakeText.show();
    }
}
