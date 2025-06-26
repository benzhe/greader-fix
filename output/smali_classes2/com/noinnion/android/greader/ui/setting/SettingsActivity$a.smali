.class public Lcom/noinnion/android/greader/ui/setting/SettingsActivity$a;
.super Ldx6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/setting/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldx6;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->z(Ljava/lang/String;Z)V

    .line 5
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->b(Z)V

    :cond_0
    return p2

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Ldx6;->a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ldx6;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f140006

    .line 2
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    return-void
.end method
