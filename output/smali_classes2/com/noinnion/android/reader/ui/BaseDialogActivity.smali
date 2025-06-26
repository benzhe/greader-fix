.class public Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;
    }
.end annotation


# instance fields
.field public v:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

.field public w:Z

.field public final x:Lhc7;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    sget-object v0, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->e:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    iput-object v0, p0, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->v:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    .line 3
    new-instance v0, Lhc7;

    invoke-direct {v0}, Lhc7;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->x:Lhc7;

    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/noinnion/android/reader/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->w:Z

    if-eqz p2, :cond_5

    .line 2
    iget-object p2, p0, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->v:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    sget-object v3, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->g:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    if-ne p2, v3, :cond_1

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0, v1}, Llw6;->m(Landroid/app/Activity;Z)V

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {p0}, Liw6;->d(Landroid/content/Context;)I

    move-result p2

    if-eq p2, v2, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    .line 5
    sget v0, Lcom/noinnion/android/reader/R$style;->AppTheme_Default_Dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_1

    .line 6
    :cond_2
    sget v0, Lcom/noinnion/android/reader/R$style;->AppTheme_Green_Dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_1

    .line 7
    :cond_3
    sget v0, Lcom/noinnion/android/reader/R$style;->AppTheme_Sepia_Dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_1

    .line 8
    :cond_4
    sget v0, Lcom/noinnion/android/reader/R$style;->AppTheme_Dark_Dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 9
    :goto_1
    sput p2, Llw6;->a:I

    .line 10
    :cond_5
    :goto_2
    invoke-static {p0}, Liw6;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Ljw6;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-static {p0}, Liw6;->N(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    invoke-static {p0, v2}, Ln56;->S1(Landroid/app/Activity;Z)V

    :cond_6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->y()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->A(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->x:Lhc7;

    invoke-virtual {v0}, Lhc7;->d()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->y()V

    return-void
.end method

.method public final y()V
    .locals 6

    .line 1
    invoke-static {p0}, Ln56;->W0(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->v:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v3, :cond_5

    if-eq v1, v4, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/noinnion/android/reader/R$integer;->dialog_border_min:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v1

    sub-int v1, v0, v1

    .line 4
    invoke-static {p0}, Ln56;->l1(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/noinnion/android/reader/R$integer;->dialog_border_max:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {p0}, Ln56;->n1(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 8
    iget-boolean v2, p0, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->w:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/noinnion/android/reader/R$integer;->dialog_border_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v1

    sub-int v1, v0, v1

    .line 10
    invoke-static {p0}, Ln56;->l1(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/noinnion/android/reader/R$integer;->dialog_border_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0, v2}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 12
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/noinnion/android/reader/R$integer;->dialog_border_min:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v1

    sub-int v1, v0, v1

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "window"

    if-ne v1, v0, :cond_6

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 17
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    .line 18
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_3

    .line 20
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 22
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 23
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_3
    return-void
.end method

.method public final z(Landroid/os/Bundle;Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;)V
    .locals 1

    const-string v0, "dialogDimension"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->v:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->A(Landroid/os/Bundle;Z)V

    return-void
.end method
