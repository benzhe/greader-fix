.class public final synthetic Lft6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lft6;->a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lft6;->a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 2
    new-instance v0, Lt75;

    invoke-direct {v0, p1}, Lt75;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11018e

    .line 3
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4
    iget-object v2, v0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lin6;

    invoke-direct {v2, p1}, Lin6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lt75;->f([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 6
    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
