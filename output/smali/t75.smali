.class public Lt75;
.super La0$a;
.source "SourceFile"


# static fields
.field public static final e:I

.field public static final f:I

.field public static final g:I


# instance fields
.field public c:Landroid/graphics/drawable/Drawable;

.field public final d:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->alertDialogStyle:I

    sput v0, Lt75;->e:I

    .line 2
    sget v0, Lcom/google/android/material/R$style;->MaterialAlertDialog_MaterialComponents:I

    sput v0, Lt75;->f:I

    .line 3
    sget v0, Lcom/google/android/material/R$attr;->materialAlertDialogTheme:I

    sput v0, Lt75;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1
    sget v0, Lt75;->g:I

    .line 2
    invoke-static {p1, v0}, Lc50;->E0(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 4
    :goto_0
    sget v9, Lt75;->e:I

    sget v10, Lt75;->f:I

    const/4 v11, 0x0

    invoke-static {p1, v11, v9, v10}, Lfc5;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v3

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v4, Lx0;

    invoke-direct {v4, v3, v1}, Lx0;-><init>(Landroid/content/Context;I)V

    move-object v3, v4

    .line 6
    :goto_1
    invoke-static {p1, v0}, Lc50;->E0(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 7
    :cond_2
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 8
    :goto_2
    invoke-direct {p0, v3, p1}, La0$a;-><init>(Landroid/content/Context;I)V

    .line 9
    iget-object p1, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialAlertDialog:[I

    new-array v8, v2, [I

    .line 12
    invoke-static {p1, v11, v9, v10}, Lt85;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, v1

    move v6, v9

    move v7, v10

    .line 13
    invoke-static/range {v3 .. v8}, Lt85;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 14
    invoke-virtual {p1, v11, v1, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 15
    sget v2, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetStart:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_start:I

    .line 17
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 19
    sget v3, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetTop:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_top:I

    .line 21
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 22
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 23
    sget v4, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetEnd:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_end:I

    .line 25
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 26
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 27
    sget v5, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetBottom:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_bottom:I

    .line 29
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 30
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 31
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    move v12, v4

    move v4, v2

    move v2, v12

    .line 33
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    iput-object v1, p0, Lt75;->d:Landroid/graphics/Rect;

    .line 35
    sget v1, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 36
    const-class v2, Lt75;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {p1, v1, v2}, Lc50;->G0(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 38
    new-instance v2, Lla5;

    invoke-direct {v2, p1, v11, v9, v10}, Lla5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iget-object v3, v2, Lla5;->e:Lla5$b;

    new-instance v4, Lu75;

    invoke-direct {v4, p1}, Lu75;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lla5$b;->b:Lu75;

    .line 40
    invoke-virtual {v2}, Lla5;->E()V

    .line 41
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v2, p1}, Lla5;->t(Landroid/content/res/ColorStateList;)V

    .line 42
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_4

    .line 43
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x1010571

    .line 44
    invoke-virtual {v0, v1, p1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 45
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 47
    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_4

    .line 48
    iget-object p1, v2, Lla5;->e:Lla5$b;

    iget-object p1, p1, Lla5$b;->a:Lpa5;

    invoke-virtual {p1, v0}, Lpa5;->e(F)Lpa5;

    move-result-object p1

    .line 49
    iget-object v0, v2, Lla5;->e:Lla5$b;

    iput-object p1, v0, Lla5$b;->a:Lpa5;

    .line 50
    invoke-virtual {v2}, Lla5;->invalidateSelf()V

    .line 51
    :cond_4
    iput-object v2, p0, Lt75;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()La0;
    .locals 11

    .line 1
    invoke-super {p0}, La0$a;->a()La0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lt75;->c:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Lla5;

    if-eqz v4, :cond_0

    .line 5
    check-cast v3, Lla5;

    .line 6
    sget-object v4, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v4

    .line 8
    invoke-virtual {v3, v4}, Lla5;->s(F)V

    .line 9
    :cond_0
    iget-object v6, p0, Lt75;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lt75;->d:Landroid/graphics/Rect;

    .line 10
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 11
    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    new-instance v1, Ls75;

    iget-object v3, p0, Lt75;->d:Landroid/graphics/Rect;

    invoke-direct {v1, v0, v3}, Ls75;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)La0$a;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, La0$a;->b(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)La0$a;
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-super {p0, p1, p2}, La0$a;->c(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    return-object p0
.end method

.method public d(ILandroid/content/DialogInterface$OnClickListener;)La0$a;
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-super {p0, p1, p2}, La0$a;->d(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    return-object p0
.end method

.method public f([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;
    .locals 1

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->p:[Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public g(I)Lt75;
    .locals 2

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h(ILandroid/content/DialogInterface$OnClickListener;)Lt75;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, La0$a;->b(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    return-object p0
.end method

.method public i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;
    .locals 1

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->j:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->k:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, La0$a;->d(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    move-object p1, p0

    check-cast p1, Lt75;

    return-object p1
.end method

.method public k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;
    .locals 1

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public l(I)La0$a;
    .locals 2

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public m(I)Lt75;
    .locals 2

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public n(Landroid/view/View;)La0$a;
    .locals 1

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->t:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->s:I

    return-object p0
.end method

.method public o(I)Lt75;
    .locals 2

    .line 1
    iget-object v0, p0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/app/AlertController$b;->t:Landroid/view/View;

    .line 2
    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->s:I

    return-object p0
.end method
