package defpackage;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.firebase.inappmessaging.display.R$id;
import com.google.firebase.inappmessaging.display.R$layout;
import com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout;
import com.google.firebase.inappmessaging.display.internal.layout.FiamCardView;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* loaded from: classes.dex */
public class r06 extends q06 {
    public FiamCardView d;
    public BaseModalLayout e;
    public ScrollView f;
    public Button g;
    public Button h;
    public ImageView i;
    public TextView j;
    public TextView k;
    public g96 l;
    public View.OnClickListener m;
    public ViewTreeObserver.OnGlobalLayoutListener n;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            r06.this.i.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    public r06(f06 f06Var, LayoutInflater layoutInflater, j96 j96Var) {
        super(f06Var, layoutInflater, j96Var);
        this.n = new a();
    }

    @Override // defpackage.q06
    public f06 b() {
        return this.b;
    }

    @Override // defpackage.q06
    public View c() {
        return this.e;
    }

    @Override // defpackage.q06
    public View.OnClickListener d() {
        return this.m;
    }

    @Override // defpackage.q06
    public ImageView e() {
        return this.i;
    }

    @Override // defpackage.q06
    public ViewGroup f() {
        return this.d;
    }

    @Override // defpackage.q06
    public ViewTreeObserver.OnGlobalLayoutListener g(Map<b96, View.OnClickListener> map, View.OnClickListener onClickListener) {
        e96 e96Var;
        View viewInflate = this.c.inflate(R$layout.card, (ViewGroup) null);
        this.f = (ScrollView) viewInflate.findViewById(R$id.body_scroll);
        this.g = (Button) viewInflate.findViewById(R$id.primary_button);
        this.h = (Button) viewInflate.findViewById(R$id.secondary_button);
        this.i = (ImageView) viewInflate.findViewById(R$id.image_view);
        this.j = (TextView) viewInflate.findViewById(R$id.message_body);
        this.k = (TextView) viewInflate.findViewById(R$id.message_title);
        this.d = (FiamCardView) viewInflate.findViewById(R$id.card_root);
        this.e = (BaseModalLayout) viewInflate.findViewById(R$id.card_content_root);
        if (this.a.a.equals(MessageType.CARD)) {
            g96 g96Var = (g96) this.a;
            this.l = g96Var;
            this.k.setText(g96Var.c.a);
            this.k.setTextColor(Color.parseColor(g96Var.c.b));
            p96 p96Var = g96Var.d;
            if (p96Var == null || p96Var.a == null) {
                this.f.setVisibility(8);
                this.j.setVisibility(8);
            } else {
                this.f.setVisibility(0);
                this.j.setVisibility(0);
                this.j.setText(g96Var.d.a);
                this.j.setTextColor(Color.parseColor(g96Var.d.b));
            }
            g96 g96Var2 = this.l;
            if (g96Var2.h == null && g96Var2.i == null) {
                this.i.setVisibility(8);
            } else {
                this.i.setVisibility(0);
            }
            g96 g96Var3 = this.l;
            b96 b96Var = g96Var3.f;
            b96 b96Var2 = g96Var3.g;
            q06.i(this.g, b96Var.b);
            Button button = this.g;
            View.OnClickListener onClickListener2 = map.get(b96Var);
            if (button != null) {
                button.setOnClickListener(onClickListener2);
            }
            this.g.setVisibility(0);
            if (b96Var2 == null || (e96Var = b96Var2.b) == null) {
                this.h.setVisibility(8);
            } else {
                q06.i(this.h, e96Var);
                Button button2 = this.h;
                View.OnClickListener onClickListener3 = map.get(b96Var2);
                if (button2 != null) {
                    button2.setOnClickListener(onClickListener3);
                }
                this.h.setVisibility(0);
            }
            f06 f06Var = this.b;
            this.i.setMaxHeight(f06Var.a());
            this.i.setMaxWidth(f06Var.b());
            this.m = onClickListener;
            this.d.setDismissListener(onClickListener);
            h(this.e, this.l.e);
        }
        return this.n;
    }
}
