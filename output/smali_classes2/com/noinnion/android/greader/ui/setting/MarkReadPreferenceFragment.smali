.class public Lcom/noinnion/android/greader/ui/setting/MarkReadPreferenceFragment;
.super Ldx6;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldx6;-><init>()V

    return-void
.end method

.method public static j(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4

    .line 1
    new-instance v0, Lt75;

    invoke-direct {v0, p0}, Lt75;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0075

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lt75;->n(Landroid/view/View;)La0$a;

    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Lt75;->d(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p0

    const v1, 0x7f110230

    .line 5
    invoke-virtual {v0, v1}, Lt75;->l(I)La0$a;

    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object v0

    .line 6
    new-instance v1, Lus6;

    invoke-direct {v1, p0, p1}, Lus6;-><init>(Lwb;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ldx6;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f140005

    .line 2
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Llw6;->n(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "preference_category_mark_read"

    .line 6
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 7
    :goto_0
    check-cast p1, Landroid/preference/PreferenceCategory;

    .line 8
    iget-object v1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "show_feeds_after_mark_all"

    .line 9
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 10
    :goto_1
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100f7

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method
