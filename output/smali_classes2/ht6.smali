.class public final synthetic Lht6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lht6;->a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p0, Lht6;->a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v0

    iget-boolean v0, v0, Lhw6;->m:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p2, Lhw6;->m:Z

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ln56;->x2(Landroid/app/Activity;)V

    return v1
.end method
