.class public final synthetic Lkt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/preference/CheckBoxPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkt6;->a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    iput-object p2, p0, Lkt6;->b:Landroid/content/Context;

    iput-object p3, p0, Lkt6;->c:Landroid/preference/CheckBoxPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p0, Lkt6;->a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    iget-object v0, p0, Lkt6;->b:Landroid/content/Context;

    iget-object v1, p0, Lkt6;->c:Landroid/preference/CheckBoxPreference;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {v0}, Lcn6;->d0(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-virtual {v1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ln56;->Z1(Landroid/app/Activity;)V

    const p1, 0x7f11015b

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    return p2
.end method
