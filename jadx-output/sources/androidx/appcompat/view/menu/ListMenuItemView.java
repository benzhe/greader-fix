package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.c3;
import defpackage.ha;
import defpackage.l1;
import defpackage.q1;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements q1.a, AbsListView.SelectionBoundsAdjuster {
    public l1 e;
    public ImageView f;
    public RadioButton g;
    public TextView h;
    public CheckBox i;
    public TextView j;
    public ImageView k;
    public ImageView l;
    public LinearLayout m;
    public Drawable n;
    public int o;
    public Context p;
    public boolean q;
    public Drawable r;
    public boolean s;
    public LayoutInflater t;
    public boolean u;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.listMenuViewStyle);
    }

    private LayoutInflater getInflater() {
        if (this.t == null) {
            this.t = LayoutInflater.from(getContext());
        }
        return this.t;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.k;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public final void a() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(R$layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.i = checkBox;
        LinearLayout linearLayout = this.m;
        if (linearLayout != null) {
            linearLayout.addView(checkBox, -1);
        } else {
            addView(checkBox, -1);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.l;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.l.getLayoutParams();
        rect.top = this.l.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    public final void b() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(R$layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.g = radioButton;
        LinearLayout linearLayout = this.m;
        if (linearLayout != null) {
            linearLayout.addView(radioButton, -1);
        } else {
            addView(radioButton, -1);
        }
    }

    @Override // q1.a
    public void d(l1 l1Var, int i) {
        this.e = l1Var;
        setVisibility(l1Var.isVisible() ? 0 : 8);
        setTitle(l1Var.e);
        setCheckable(l1Var.isCheckable());
        setShortcut(l1Var.n(), l1Var.e());
        setIcon(l1Var.getIcon());
        setEnabled(l1Var.isEnabled());
        setSubMenuArrowVisible(l1Var.hasSubMenu());
        setContentDescription(l1Var.q);
    }

    @Override // q1.a
    public l1 getItemData() {
        return this.e;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        Drawable drawable = this.n;
        AtomicInteger atomicInteger = ha.a;
        setBackground(drawable);
        TextView textView = (TextView) findViewById(R$id.title);
        this.h = textView;
        int i = this.o;
        if (i != -1) {
            textView.setTextAppearance(this.p, i);
        }
        this.j = (TextView) findViewById(R$id.shortcut);
        ImageView imageView = (ImageView) findViewById(R$id.submenuarrow);
        this.k = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.r);
        }
        this.l = (ImageView) findViewById(R$id.group_divider);
        this.m = (LinearLayout) findViewById(R$id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f != null && this.q) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (!z && this.g == null && this.i == null) {
            return;
        }
        if (this.e.h()) {
            if (this.g == null) {
                b();
            }
            compoundButton = this.g;
            compoundButton2 = this.i;
        } else {
            if (this.i == null) {
                a();
            }
            compoundButton = this.i;
            compoundButton2 = this.g;
        }
        if (z) {
            compoundButton.setChecked(this.e.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.i;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.g;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.e.h()) {
            if (this.g == null) {
                b();
            }
            compoundButton = this.g;
        } else {
            if (this.i == null) {
                a();
            }
            compoundButton = this.i;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.u = z;
        this.q = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.l;
        if (imageView != null) {
            imageView.setVisibility((this.s || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        Objects.requireNonNull(this.e.n);
        boolean z = this.u;
        if (z || this.q) {
            ImageView imageView = this.f;
            if (imageView == null && drawable == null && !this.q) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R$layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f = imageView2;
                LinearLayout linearLayout = this.m;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.q) {
                this.f.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f;
            if (!z) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f.getVisibility() != 0) {
                this.f.setVisibility(0);
            }
        }
    }

    public void setShortcut(boolean z, char c) {
        String string;
        int i = (z && this.e.n()) ? 0 : 8;
        if (i == 0) {
            TextView textView = this.j;
            l1 l1Var = this.e;
            char cE = l1Var.e();
            if (cE == 0) {
                string = "";
            } else {
                Resources resources = l1Var.n.a.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(l1Var.n.a).hasPermanentMenuKey()) {
                    sb.append(resources.getString(R$string.abc_prepend_shortcut_label));
                }
                int i2 = l1Var.n.n() ? l1Var.k : l1Var.i;
                l1.c(sb, i2, 65536, resources.getString(R$string.abc_menu_meta_shortcut_label));
                l1.c(sb, i2, RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT, resources.getString(R$string.abc_menu_ctrl_shortcut_label));
                l1.c(sb, i2, 2, resources.getString(R$string.abc_menu_alt_shortcut_label));
                l1.c(sb, i2, 1, resources.getString(R$string.abc_menu_shift_shortcut_label));
                l1.c(sb, i2, 4, resources.getString(R$string.abc_menu_sym_shortcut_label));
                l1.c(sb, i2, 8, resources.getString(R$string.abc_menu_function_shortcut_label));
                if (cE == '\b') {
                    sb.append(resources.getString(R$string.abc_menu_delete_shortcut_label));
                } else if (cE == '\n') {
                    sb.append(resources.getString(R$string.abc_menu_enter_shortcut_label));
                } else if (cE != ' ') {
                    sb.append(cE);
                } else {
                    sb.append(resources.getString(R$string.abc_menu_space_shortcut_label));
                }
                string = sb.toString();
            }
            textView.setText(string);
        }
        if (this.j.getVisibility() != i) {
            this.j.setVisibility(i);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.h.getVisibility() != 8) {
                this.h.setVisibility(8);
            }
        } else {
            this.h.setText(charSequence);
            if (this.h.getVisibility() != 0) {
                this.h.setVisibility(0);
            }
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        c3 c3VarR = c3.r(getContext(), attributeSet, R$styleable.MenuView, i, 0);
        this.n = c3VarR.g(R$styleable.MenuView_android_itemBackground);
        this.o = c3VarR.m(R$styleable.MenuView_android_itemTextAppearance, -1);
        this.q = c3VarR.a(R$styleable.MenuView_preserveIconSpacing, false);
        this.p = context;
        this.r = c3VarR.g(R$styleable.MenuView_subMenuArrow);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, R$attr.dropDownListViewStyle, 0);
        this.s = typedArrayObtainStyledAttributes.hasValue(0);
        c3VarR.b.recycle();
        typedArrayObtainStyledAttributes.recycle();
    }
}
