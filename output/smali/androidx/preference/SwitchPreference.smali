.class public Landroidx/preference/SwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SwitchPreference$a;
    }
.end annotation


# instance fields
.field public final w:Landroidx/preference/SwitchPreference$a;

.field public x:Ljava/lang/CharSequence;

.field public y:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 23
    sget v0, Landroidx/preference/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Lc8;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v1, Landroidx/preference/SwitchPreference$a;

    invoke-direct {v1, p0}, Landroidx/preference/SwitchPreference$a;-><init>(Landroidx/preference/SwitchPreference;)V

    iput-object v1, p0, Landroidx/preference/SwitchPreference;->w:Landroidx/preference/SwitchPreference$a;

    .line 3
    sget-object v1, Landroidx/preference/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Landroidx/preference/R$styleable;->SwitchPreference_summaryOn:I

    sget p3, Landroidx/preference/R$styleable;->SwitchPreference_android_summaryOn:I

    invoke-static {p1, p2, p3}, Lc8;->f(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    .line 5
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->r:Ljava/lang/CharSequence;

    .line 6
    sget p2, Landroidx/preference/R$styleable;->SwitchPreference_summaryOff:I

    sget p3, Landroidx/preference/R$styleable;->SwitchPreference_android_summaryOff:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    :cond_0
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->s:Ljava/lang/CharSequence;

    .line 10
    sget p2, Landroidx/preference/R$styleable;->SwitchPreference_switchTextOn:I

    sget p3, Landroidx/preference/R$styleable;->SwitchPreference_android_switchTextOn:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 12
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 13
    :cond_1
    iput-object p2, p0, Landroidx/preference/SwitchPreference;->x:Ljava/lang/CharSequence;

    .line 14
    sget p2, Landroidx/preference/R$styleable;->SwitchPreference_switchTextOff:I

    sget p3, Landroidx/preference/R$styleable;->SwitchPreference_android_switchTextOff:I

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 16
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 17
    :cond_2
    iput-object p2, p0, Landroidx/preference/SwitchPreference;->y:Ljava/lang/CharSequence;

    .line 18
    sget p2, Landroidx/preference/R$styleable;->SwitchPreference_disableDependentsState:I

    sget p3, Landroidx/preference/R$styleable;->SwitchPreference_android_disableDependentsState:I

    .line 19
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 21
    iput-boolean p2, p0, Landroidx/preference/TwoStatePreference;->v:Z

    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
