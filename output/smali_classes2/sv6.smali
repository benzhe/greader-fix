.class public Lsv6;
.super Ldx6;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public l:I

.field public m:I

.field public n:Landroid/preference/PreferenceManager;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Landroid/view/View;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldx6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsv6;->l:I

    .line 3
    iput v0, p0, Lsv6;->m:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lsv6;->o:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lsv6;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11001d

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lsv6;->p:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lsv6;->o:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 5
    iget-object v1, p0, Lsv6;->o:Ljava/lang/String;

    const-string v2, "user/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "uid"

    if-nez v1, :cond_3

    iget-object v1, p0, Lsv6;->o:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lsv6;->o:Ljava/lang/String;

    const-string v4, "feed/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lsv6;->o:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Lip6;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lip6;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, v0, Lip6;->h:Ljava/lang/String;

    iput-object v0, p0, Lsv6;->p:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lsv6;->r:Landroid/widget/ImageView;

    const v1, 0x7f0800ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lsv6;->o:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f110154

    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsv6;->p:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lsv6;->r:Landroid/widget/ImageView;

    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 13
    :cond_3
    :goto_0
    iget-object v1, p0, Lsv6;->o:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v1, v0}, Llp6;->h(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsv6;->p:Ljava/lang/String;

    .line 15
    iget v0, v1, Llp6;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 16
    :pswitch_0
    iget-object v0, p0, Lsv6;->r:Landroid/widget/ImageView;

    const v1, 0x7f080190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 17
    :pswitch_1
    iget-object v0, p0, Lsv6;->r:Landroid/widget/ImageView;

    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 18
    :pswitch_2
    iget-object v0, p0, Lsv6;->r:Landroid/widget/ImageView;

    const v1, 0x7f080192

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object v0, p0, Lsv6;->r:Landroid/widget/ImageView;

    const v1, 0x7f080193

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    :cond_5
    :goto_1
    iget-object v0, p0, Lsv6;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lsv6;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Ldx6;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lsv6;->j()V

    .line 4
    iget-object v0, p0, Ldx6;->e:Landroid/preference/PreferenceManager;

    .line 5
    iput-object v0, p0, Lsv6;->n:Landroid/preference/PreferenceManager;

    const-string v1, "com.noinnion.android.greader.reader.widget.WidgetPreferences"

    .line 6
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lsv6;->n:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 8
    iget v0, p0, Lsv6;->m:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 9
    iget-object v0, p0, Lsv6;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_0
    iget v0, p0, Lsv6;->m:I

    if-eq v0, v2, :cond_6

    .line 11
    iget-object v0, p0, Lsv6;->n:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 12
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1101b0

    .line 13
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 15
    iget-object v1, p0, Lsv6;->q:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 17
    iget v2, p0, Lsv6;->l:I

    const-string v3, "unread_only"

    invoke-static {v2, v3}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f110377

    .line 18
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 19
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 21
    new-instance v1, Landroid/preference/ListPreference;

    invoke-direct {v1, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 22
    iget v2, p0, Lsv6;->l:I

    const-string v3, "item_limit"

    invoke-static {v2, v3}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f03004a

    .line 23
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 24
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v2, 0x7f1102a4

    .line 25
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 26
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setTitle(I)V

    const-string v2, "20"

    .line 27
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 29
    iget v1, p0, Lsv6;->m:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 30
    new-instance v1, Landroid/preference/ListPreference;

    invoke-direct {v1, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 31
    iget v3, p0, Lsv6;->l:I

    const-string v4, "scroll_speed"

    invoke-static {v3, v4}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f03004b

    .line 32
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    const v3, 0x7f03004c

    .line 33
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v3, 0x7f11036f

    .line 34
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 35
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    const-string v3, "0"

    .line 36
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 38
    :cond_1
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v3, 0x7f110238

    .line 39
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 41
    new-instance v3, Lcom/thebluealliance/spectrum/SpectrumPreference;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/thebluealliance/spectrum/SpectrumPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, v3, Lcom/thebluealliance/spectrum/SpectrumPreference;->e:[I

    .line 43
    iget v5, p0, Lsv6;->l:I

    const-string v7, "text_color"

    invoke-static {v5, v7}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/DialogPreference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f110375

    .line 44
    invoke-virtual {v3, v5}, Landroid/preference/DialogPreference;->setTitle(I)V

    const-string v5, "#ffffff"

    .line 45
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/DialogPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 47
    new-instance v3, Lcom/thebluealliance/spectrum/SpectrumPreference;

    invoke-direct {v3, p1, v4}, Lcom/thebluealliance/spectrum/SpectrumPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, v3, Lcom/thebluealliance/spectrum/SpectrumPreference;->e:[I

    .line 49
    iget v4, p0, Lsv6;->l:I

    const-string v5, "background_color"

    invoke-static {v4, v5}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/DialogPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f110370

    .line 50
    invoke-virtual {v3, v4}, Landroid/preference/DialogPreference;->setTitle(I)V

    const-string v4, "#33b5e5"

    .line 51
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/DialogPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 53
    new-instance v3, Landroid/preference/ListPreference;

    invoke-direct {v3, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 54
    iget v4, p0, Lsv6;->l:I

    const-string v5, "background_opacity"

    invoke-static {v4, v5}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f030048

    .line 55
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    const v4, 0x7f030049

    .line 56
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v4, 0x7f110371

    .line 57
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 58
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setTitle(I)V

    const-string v4, "100"

    .line 59
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 61
    iget v3, p0, Lsv6;->m:I

    if-ne v3, v2, :cond_2

    .line 62
    new-instance v3, Landroid/preference/ListPreference;

    invoke-direct {v3, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 63
    iget v4, p0, Lsv6;->l:I

    const-string v5, "text_size"

    invoke-static {v4, v5}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v4, 0x7f03001f

    .line 64
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    const v4, 0x7f030020

    .line 65
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v4, 0x7f110376

    .line 66
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 67
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setTitle(I)V

    const-string v4, "16"

    .line 68
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 70
    :cond_2
    iget v1, p0, Lsv6;->m:I

    if-ne v1, v2, :cond_3

    if-ne v1, v2, :cond_4

    .line 71
    :cond_3
    new-instance v1, Landroid/preference/ListPreference;

    invoke-direct {v1, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 72
    iget v2, p0, Lsv6;->l:I

    const-string v3, "show_thumbnail"

    invoke-static {v2, v3}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f03000e

    .line 73
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    const v2, 0x7f03000f

    .line 74
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const v2, 0x7f110373

    .line 75
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setTitle(I)V

    const-string v2, "1"

    .line 77
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 79
    :cond_4
    iget v1, p0, Lsv6;->m:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 80
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 81
    iget p1, p0, Lsv6;->l:I

    const-string v2, "show_summary"

    invoke-static {p1, v2}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    const p1, 0x7f110372

    .line 82
    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 83
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 85
    :cond_5
    invoke-virtual {p0, v0}, Ldx6;->i(Landroid/preference/PreferenceScreen;)V

    :cond_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090099

    if-eq p1, v0, :cond_5

    const v0, 0x7f090192

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const v0, 0x7f09022a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;->B()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    iget p1, p0, Lsv6;->m:I

    if-ne p1, v1, :cond_3

    .line 6
    iget-object p1, p0, Lsv6;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsv6;->p:Ljava/lang/String;

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;

    iget v0, p0, Lsv6;->l:I

    iget-object v1, p0, Lsv6;->o:Ljava/lang/String;

    iget-object v2, p0, Lsv6;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;->C(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    iget v0, p0, Lsv6;->m:I

    iget-object v2, p0, Lsv6;->o:Ljava/lang/String;

    new-instance v3, Lrv6;

    invoke-direct {v3, p0}, Lrv6;-><init>(Lsv6;)V

    .line 9
    :try_start_0
    new-instance v4, Ltv6;

    invoke-direct {v4, v0, v2, v3}, Ltv6;-><init>(ILjava/lang/String;Ltv6$b;)V

    .line 10
    check-cast p1, Lxb;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lqb;

    invoke-direct {v0, p1}, Lqb;-><init>(Lxb;)V

    const-string p1, "fragment_tag_list"

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, v4, p1, v1}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 14
    invoke-virtual {v0}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 16
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :catch_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ldx6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lsv6;->l:I

    const-string v0, "app_widget_type"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lsv6;->m:I

    const-string v0, "app_widget_tag"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsv6;->o:Ljava/lang/String;

    .line 6
    :cond_0
    iget p1, p0, Lsv6;->l:I

    if-eqz p1, :cond_1

    iget p1, p0, Lsv6;->m:I

    if-nez p1, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 8
    :cond_2
    iget p1, p0, Lsv6;->m:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lsv6;->o:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "all"

    .line 9
    iput-object p1, p0, Lsv6;->o:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0113

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090247

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lsv6;->q:Landroid/view/View;

    const p2, 0x7f0902f5

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lsv6;->r:Landroid/widget/ImageView;

    const p2, 0x7f0902f6

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lsv6;->s:Landroid/widget/TextView;

    const p2, 0x7f090320

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lsv6;->t:Landroid/widget/TextView;

    const p2, 0x7f090192

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09022a

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090099

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
