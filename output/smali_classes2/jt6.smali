.class public final synthetic Ljt6;
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

    iput-object p1, p0, Ljt6;->a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object p1, p0, Ljt6;->a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    invoke-direct {v1}, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;-><init>()V

    .line 3
    check-cast p1, Lxb;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Lqb;

    invoke-direct {v2, p1}, Lqb;-><init>(Lxb;)V

    const-string p1, "fragment_pref_restore"

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3, v1, p1, v0}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v2}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
