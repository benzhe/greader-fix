.class public Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;
.super Ldx6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/setting/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public l:Z

.field public m:Z

.field public n:Lcom/noinnion/android/reader/ui/view/SeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldx6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->l:Z

    .line 3
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->m:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p1, "rich_list"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "quick_actions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->z(Ljava/lang/String;Z)V

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    invoke-super {p0, p1, p2}, Ldx6;->a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public final j(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;

    .line 3
    sget v1, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->y:I

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lu;->t(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Ldx6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 3
    invoke-static {p1}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Llw6;->n(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->l:Z

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/noinnion/android/reader/R$bool;->isTablet:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->m:Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "settings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sync"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f1102a4

    const-string v4, "0"

    const-string v5, "1"

    const v6, 0x7f03000f

    const v7, 0x7f03000e

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f11032e

    .line 9
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    .line 10
    iget-object v8, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    .line 11
    invoke-virtual {v8, p1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 12
    new-instance v9, Landroid/preference/PreferenceCategory;

    invoke-direct {v9, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 14
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 15
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v10, "sync_auto_update"

    .line 16
    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 18
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v10, 0x7f11029c

    .line 19
    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 20
    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setTitle(I)V

    const v10, 0x7f11029b

    .line 21
    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 22
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 23
    new-instance v10, Landroid/preference/ListPreference;

    invoke-direct {v10, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v11, "sync_interval_hours"

    .line 24
    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v12, 0x7f03003d

    .line 25
    invoke-virtual {v10, v12}, Landroid/preference/ListPreference;->setEntries(I)V

    const v12, 0x7f03003e

    .line 26
    invoke-virtual {v10, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v12, 0x7f1102a2

    .line 27
    invoke-virtual {v10, v12}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 28
    invoke-virtual {v10, v12}, Landroid/preference/ListPreference;->setTitle(I)V

    const v12, 0x7f1102a1

    .line 29
    invoke-virtual {v10, v12}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 30
    invoke-virtual {v10, v5}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 31
    invoke-static {p1}, Liw6;->e(Landroid/content/Context;)I

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v10, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 32
    new-instance v12, Lws6;

    invoke-direct {v12, p0}, Lws6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V

    invoke-virtual {v10, v12}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 33
    new-instance v12, Lct6;

    invoke-direct {v12, p0, v10, p1}, Lct6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;Landroid/preference/ListPreference;Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 34
    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 35
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 36
    new-instance v0, Lcom/noinnion/android/reader/ui/view/SeekBarPreference;

    invoke-direct {v0, p1}, Lcom/noinnion/android/reader/ui/view/SeekBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->n:Lcom/noinnion/android/reader/ui/view/SeekBarPreference;

    const-string v10, "sync_custom_interval"

    .line 37
    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->n:Lcom/noinnion/android/reader/ui/view/SeekBarPreference;

    const v10, 0x7f11029e

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 39
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->n:Lcom/noinnion/android/reader/ui/view/SeekBarPreference;

    const v10, 0x7f11029d

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 40
    invoke-static {p1, v11}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    move-object v5, v0

    .line 42
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Liw6;->e(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->n:Lcom/noinnion/android/reader/ui/view/SeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->n:Lcom/noinnion/android/reader/ui/view/SeekBarPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 45
    :goto_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->n:Lcom/noinnion/android/reader/ui/view/SeekBarPreference;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 46
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "sync_item_limit"

    .line 47
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f03003f

    .line 48
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    const v1, 0x7f030040

    .line 49
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 50
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 51
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    const v1, 0x7f1102a3

    .line 52
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    const-string v1, "1000"

    .line 53
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 55
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "sync_include_starred"

    .line 56
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f1102a0

    .line 57
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v1, 0x7f11029f

    .line 58
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 59
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 61
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "sync_on_start"

    .line 62
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 64
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v1, 0x7f1102b2

    .line 65
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    const v1, 0x7f1102b1

    .line 67
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 68
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 70
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110237

    .line 71
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 72
    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string p1, "sync_server_reads"

    .line 74
    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const p1, 0x7f1102b4

    .line 75
    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const p1, 0x7f1102b3

    .line 76
    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 77
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 79
    invoke-virtual {p0, v8}, Ldx6;->i(Landroid/preference/PreferenceScreen;)V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110103

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    goto/16 :goto_15

    :cond_3
    const-string v0, "offline"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110233

    .line 83
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    .line 84
    iget-object v1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    .line 85
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 86
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 88
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 89
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "offline_usage"

    .line 90
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 92
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v5, 0x7f110277

    .line 93
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 94
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    const v5, 0x7f110276

    .line 95
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 96
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 98
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "offline_feed_items_limit"

    .line 99
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f030030

    .line 100
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    const v5, 0x7f030031

    .line 101
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 102
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 103
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    const v3, 0x7f110267

    .line 104
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    const-string v3, "50"

    .line 105
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 107
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "offline_autoload_cache"

    .line 108
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f110265

    .line 109
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v3, 0x7f110264

    .line 110
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 111
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 113
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "offline_autoload_reading_mode"

    .line 114
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f03002e

    .line 115
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    const v5, 0x7f03002f

    .line 116
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v5, 0x7f110248

    .line 117
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 118
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    const v5, 0x7f110266

    .line 119
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 120
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 122
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v4, "offline_save_page_on_star"

    .line 123
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f110275

    .line 124
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v4, 0x7f110274

    .line 125
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 126
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 128
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110232

    .line 129
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 130
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 131
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "offline_load_full_content"

    .line 132
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f11026d

    .line 133
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v5, 0x7f11026c

    .line 134
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 135
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 137
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "offline_full_content_format"

    .line 138
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f030032

    .line 139
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    const v5, 0x7f030033

    .line 140
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v5, 0x7f110269

    .line 141
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 142
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    const v5, 0x7f110268

    .line 143
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    const/4 v5, 0x3

    .line 144
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 146
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "offline_load_images"

    .line 147
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f11026f

    .line 148
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v5, 0x7f11026e

    .line 149
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 150
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 152
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "offline_save_data_traffic"

    .line 153
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f110273

    .line 154
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v5, 0x7f110272

    .line 155
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 156
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 158
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "offline_load_audio"

    .line 159
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f11026b

    .line 160
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v3, 0x7f11026a

    .line 161
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 162
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    new-instance v3, Lgt6;

    invoke-direct {v3, p0, p1, v2}, Lgt6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "offline_load_video"

    .line 166
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f110271

    .line 167
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v3, 0x7f110270

    .line 168
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 169
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 171
    new-instance v0, Lkt6;

    invoke-direct {v0, p0, p1, v2}, Lkt6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    invoke-virtual {p0, v1}, Ldx6;->i(Landroid/preference/PreferenceScreen;)V

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110101

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    goto/16 :goto_15

    :cond_4
    const-string v0, "notification"

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const p1, 0x7f110231

    .line 175
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    const p1, 0x7f140007

    .line 176
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 178
    invoke-static {p1}, Lcn6;->d0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 179
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "sync_notifiable_custom"

    .line 180
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 181
    :goto_2
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 182
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 184
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110100

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    goto/16 :goto_15

    :cond_7
    const-string v0, "cache"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const p1, 0x7f11022c

    .line 186
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    const p1, 0x7f140003

    .line 187
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    .line 188
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    const-string v0, "preference_offline_storage"

    .line 189
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 190
    :goto_3
    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 191
    new-instance p1, Lmt6;

    invoke-direct {p1, p0}, Lmt6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V

    invoke-virtual {v3, p1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100fd

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    goto/16 :goto_15

    :cond_9
    const-string v0, "reading"

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const p1, 0x7f110235

    .line 194
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    const p1, 0x7f14000a

    .line 195
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    .line 196
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_a

    move-object p1, v3

    goto :goto_4

    :cond_a
    const-string v0, "preference_mark_read"

    .line 197
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 198
    :goto_4
    check-cast p1, Landroid/preference/PreferenceScreen;

    .line 199
    new-instance v0, Lbt6;

    invoke-direct {v0, p0}, Lbt6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 200
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    const-string v0, "preference_article_controls"

    .line 201
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 202
    :goto_5
    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 203
    new-instance p1, Lzs6;

    invoke-direct {p1, p0}, Lzs6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V

    invoke-virtual {v3, p1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110102

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    goto/16 :goto_15

    :cond_c
    const-string v0, "look_feel"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const p1, 0x7f110238

    .line 206
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    const p1, 0x7f140004

    .line 207
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    .line 208
    iget-boolean p1, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->l:Z

    const-string v0, "preference_category_home_view"

    if-eqz p1, :cond_10

    .line 209
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_d

    move-object p1, v3

    goto :goto_6

    .line 210
    :cond_d
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 211
    :goto_6
    check-cast p1, Landroid/preference/PreferenceCategory;

    .line 212
    iget-object v1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez v1, :cond_e

    move-object v1, v3

    goto :goto_7

    :cond_e
    const-string v2, "home_landscape_dual_pane"

    .line 213
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 214
    :goto_7
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    iget-object v1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez v1, :cond_f

    move-object v1, v3

    goto :goto_8

    :cond_f
    const-string v2, "home_hide_article_list"

    .line 216
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 217
    :goto_8
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_b

    .line 218
    :cond_10
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_11

    move-object p1, v3

    goto :goto_9

    :cond_11
    const-string v1, "preference_category_article_view"

    .line 219
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 220
    :goto_9
    check-cast p1, Landroid/preference/PreferenceCategory;

    .line 221
    iget-object v1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez v1, :cond_12

    move-object v1, v3

    goto :goto_a

    :cond_12
    const-string v2, "item_nav_bar"

    .line 222
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 223
    :goto_a
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :goto_b
    iget-boolean p1, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->m:Z

    if-nez p1, :cond_15

    .line 225
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_13

    move-object p1, v3

    goto :goto_c

    .line 226
    :cond_13
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 227
    :goto_c
    check-cast p1, Landroid/preference/PreferenceCategory;

    .line 228
    iget-object v0, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_14

    move-object v0, v3

    goto :goto_d

    :cond_14
    const-string v1, "use_phone_ui"

    .line 229
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 230
    :goto_d
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    :cond_15
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_16

    goto :goto_e

    :cond_16
    const-string v0, "fullscreen"

    .line 232
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 233
    :goto_e
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 234
    new-instance p1, Lht6;

    invoke-direct {p1, p0}, Lht6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V

    invoke-virtual {v3, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100fe

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    goto/16 :goto_15

    :cond_17
    const-string v0, "rich_list"

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const p1, 0x7f110278

    .line 237
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    const p1, 0x7f14000b

    .line 238
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    goto/16 :goto_15

    :cond_18
    const-string v0, "quick_actions"

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const p1, 0x7f11024f

    .line 240
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    const p1, 0x7f140009

    .line 241
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    goto/16 :goto_15

    :cond_19
    const-string v0, "services"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110236

    .line 244
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    .line 245
    iget-object v4, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    .line 246
    invoke-virtual {v4, p1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 247
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-direct {v6, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 249
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 250
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v7, "service_tts"

    .line 251
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v7, 0x7f030034

    .line 252
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    const v7, 0x7f030035

    .line 253
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v7, 0x7f110339

    .line 254
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 255
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setTitle(I)V

    const v7, 0x7f11028d

    .line 256
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    const/4 v7, 0x2

    .line 257
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 259
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 260
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v7, "service_translate"

    .line 261
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v7, 0x7f1101b6

    .line 262
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v7, 0x7f11028c

    .line 263
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 264
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v6, 0x7f110352

    .line 267
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 268
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    new-instance v6, Landroid/preference/ListPreference;

    invoke-direct {v6, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v8, "item_send_to"

    .line 270
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v8, 0x7f030028

    .line 271
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    const v8, 0x7f030029

    .line 272
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v8, 0x7f11025f

    .line 273
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 274
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setTitle(I)V

    const v8, 0x7f11025e

    .line 275
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 276
    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 278
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v6, "item_internal_share"

    .line 279
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v6, 0x7f110286

    .line 280
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v6, 0x7f110287

    .line 281
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 282
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 284
    iget-object v5, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    .line 285
    invoke-virtual {v5, p1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    const v8, 0x7f110289

    .line 286
    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    const v8, 0x7f11028a

    .line 287
    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    const-string v8, "item_share_default"

    .line 288
    invoke-static {p1, v8, v3}, Liw6;->G(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v1, 0x0

    .line 289
    :goto_f
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 290
    new-instance v1, Let6;

    invoke-direct {v1, p1}, Let6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 291
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 292
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "service_everclip"

    .line 293
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f1102f8

    .line 294
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v2, 0x7f110283

    .line 295
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 296
    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 298
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11028b

    .line 299
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 300
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 301
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "service_facebook"

    .line 302
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f1102fb

    .line 303
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v2, 0x7f110284

    .line 304
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 305
    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 307
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "service_twitter"

    .line 308
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f110309

    .line 309
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const v2, 0x7f11028e

    .line 310
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 311
    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 313
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110280

    .line 314
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 315
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 316
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "service_ril"

    .line 317
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f110305

    .line 318
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 319
    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 320
    new-instance v2, Lxs6;

    invoke-direct {v2, v1, p1}, Lxs6;-><init>(Landroid/preference/CheckBoxPreference;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 322
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "service_instapaper"

    .line 323
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f1102ff

    .line 324
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 325
    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 326
    new-instance v2, Ldt6;

    invoke-direct {v2, v1, p1}, Ldt6;-><init>(Landroid/preference/CheckBoxPreference;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 327
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 328
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110288

    .line 329
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 330
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 331
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "service_google_mobilizer"

    .line 332
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f1102fc

    .line 333
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 334
    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 335
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 336
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "service_readability_mobilizer"

    .line 337
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f110303

    .line 338
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 339
    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 341
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11027f

    .line 342
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 343
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 344
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "service_tesla_unread"

    .line 345
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f110307

    .line 346
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 347
    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 348
    new-instance v2, Llt6;

    invoke-direct {v2, v1, p1}, Llt6;-><init>(Landroid/preference/CheckBoxPreference;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 350
    invoke-virtual {p0, v4}, Ldx6;->i(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_15

    :cond_1b
    const-string v0, "backup"

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const p1, 0x7f11022b

    .line 352
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    const p1, 0x7f140002

    .line 353
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    .line 354
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_1c

    move-object p1, v3

    goto :goto_10

    :cond_1c
    const-string v0, "preference_backup"

    .line 355
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 356
    :goto_10
    check-cast p1, Landroid/preference/PreferenceScreen;

    .line 357
    new-instance v0, Lys6;

    invoke-direct {v0, p0}, Lys6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 358
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_1d

    goto :goto_11

    :cond_1d
    const-string v0, "preference_restore"

    .line 359
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 360
    :goto_11
    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 361
    new-instance p1, Ljt6;

    invoke-direct {p1, p0}, Ljt6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V

    invoke-virtual {v3, p1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_15

    :cond_1e
    const-string v0, "other"

    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const p1, 0x7f110234

    .line 363
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;->j(I)V

    const p1, 0x7f140008

    .line 364
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    .line 365
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_1f

    move-object p1, v3

    goto :goto_12

    :cond_1f
    const-string v0, "preference_feedback"

    .line 366
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 367
    :goto_12
    check-cast p1, Landroid/preference/PreferenceScreen;

    .line 368
    new-instance v0, Lft6;

    invoke-direct {v0, p0}, Lft6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 369
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_20

    move-object p1, v3

    goto :goto_13

    :cond_20
    const-string v0, "preference_privacy_policy"

    .line 370
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 371
    :goto_13
    check-cast p1, Landroid/preference/PreferenceScreen;

    .line 372
    new-instance v0, Lit6;

    invoke-direct {v0, p0}, Lit6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 373
    iget-object p1, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    if-nez p1, :cond_21

    goto :goto_14

    :cond_21
    const-string v0, "preference_privacy_settings"

    .line 374
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 375
    :goto_14
    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 376
    new-instance p1, Lat6;

    invoke-direct {p1, p0}, Lat6;-><init>(Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;)V

    invoke-virtual {v3, p1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_22
    :goto_15
    return-void
.end method
