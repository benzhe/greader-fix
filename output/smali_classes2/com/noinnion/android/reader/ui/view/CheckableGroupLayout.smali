.class public Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lfx6;


# instance fields
.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;->e:Z

    .line 3
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;->e:Z

    .line 6
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;->e:Z

    .line 9
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;->f:Z

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;->f:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;->e:Z

    .line 3
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/view/CheckableGroupLayout;->f:Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Llw6;->e(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_8

    const/4 v0, 0x2

    if-eq v1, v0, :cond_6

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    if-eqz p1, :cond_1

    .line 5
    sget p1, Lcom/noinnion/android/reader/R$drawable;->list_bg_group_checked_default:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/noinnion/android/reader/R$drawable;->list_bg_group_selector_default:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    sget p1, Lcom/noinnion/android/reader/R$drawable;->list_bg_group_checked_green:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/noinnion/android/reader/R$drawable;->list_bg_group_selector_blue:I

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 7
    sget p1, Lcom/noinnion/android/reader/R$drawable;->list_bg_group_checked_sepia:I

    goto :goto_0

    :cond_5
    sget p1, Lcom/noinnion/android/reader/R$drawable;->list_bg_group_selector_sepia:I

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    .line 8
    sget p1, Lcom/noinnion/android/reader/R$drawable;->list_bg_group_checked_black:I

    goto :goto_0

    :cond_7
    sget p1, Lcom/noinnion/android/reader/R$drawable;->list_bg_group_selector_black:I

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    .line 9
    sget p1, Lcom/noinnion/android/reader/R$drawable;->list_bg_group_checked_dark:I

    goto :goto_0

    :cond_9
    sget p1, Lcom/noinnion/android/reader/R$drawable;->list_bg_group_selector_dark:I

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method
