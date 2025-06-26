.class public final synthetic Lct6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

.field public final synthetic b:Landroid/preference/ListPreference;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;Landroid/preference/ListPreference;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct6;->a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    iput-object p2, p0, Lct6;->b:Landroid/preference/ListPreference;

    iput-object p3, p0, Lct6;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object p1, p0, Lct6;->a:Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    iget-object v0, p0, Lct6;->b:Landroid/preference/ListPreference;

    iget-object v1, p0, Lct6;->c:Landroid/content/Context;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "0"

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 5
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->n:Lcom/noinnion/android/reader/ui/view/SeekBarPreference;

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const-string p2, "sync_interval_hours"

    .line 7
    invoke-static {v1, p2}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "1"

    .line 9
    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->n:Lcom/noinnion/android/reader/ui/view/SeekBarPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return v3
.end method
