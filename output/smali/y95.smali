.class public Ly95;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Z

.field public final j:F

.field public k:F

.field public final l:I

.field public m:Z

.field public n:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ly95;->m:Z

    .line 3
    sget-object v1, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Ly95;->k:F

    .line 5
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColor:I

    .line 6
    invoke-static {p1, v1, v2}, Lc50;->a0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Ly95;->a:Landroid/content/res/ColorStateList;

    .line 7
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorHint:I

    .line 8
    invoke-static {p1, v1, v2}, Lc50;->a0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 9
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorLink:I

    .line 10
    invoke-static {p1, v1, v2}, Lc50;->a0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 11
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ly95;->d:I

    .line 12
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_typeface:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ly95;->e:I

    .line 13
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_fontFamily:I

    sget v4, Lcom/google/android/material/R$styleable;->TextAppearance_android_fontFamily:I

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    .line 15
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Ly95;->l:I

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ly95;->c:Ljava/lang/String;

    .line 17
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 18
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowColor:I

    .line 19
    invoke-static {p1, v1, v0}, Lc50;->a0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Ly95;->b:Landroid/content/res/ColorStateList;

    .line 20
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDx:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Ly95;->f:F

    .line 21
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Ly95;->g:F

    .line 22
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Ly95;->h:F

    .line 23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 25
    sget p2, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_letterSpacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Ly95;->i:Z

    .line 26
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Ly95;->j:F

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly95;->n:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Ly95;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Ly95;->d:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ly95;->n:Landroid/graphics/Typeface;

    .line 3
    :cond_0
    iget-object v0, p0, Ly95;->n:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    .line 4
    iget v0, p0, Ly95;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Ly95;->n:Landroid/graphics/Typeface;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Ly95;->n:Landroid/graphics/Typeface;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Ly95;->n:Landroid/graphics/Typeface;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Ly95;->n:Landroid/graphics/Typeface;

    .line 9
    :goto_0
    iget-object v0, p0, Ly95;->n:Landroid/graphics/Typeface;

    iget v1, p0, Ly95;->d:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ly95;->n:Landroid/graphics/Typeface;

    :cond_4
    return-void
.end method

.method public b(Landroid/content/Context;Laa5;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ly95;->a()V

    .line 2
    iget v1, p0, Ly95;->l:I

    const/4 v7, 0x1

    if-nez v1, :cond_0

    .line 3
    iput-boolean v7, p0, Ly95;->m:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Ly95;->m:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Ly95;->n:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v7}, Laa5;->b(Landroid/graphics/Typeface;Z)V

    return-void

    .line 6
    :cond_1
    :try_start_0
    new-instance v4, Ly95$a;

    invoke-direct {v4, p0, p2}, Ly95$a;-><init>(Ly95;Laa5;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, -0x4

    .line 8
    invoke-virtual {v4, p1, v0}, Lb8;->a(ILandroid/os/Handler;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lc8;->i(Landroid/content/Context;ILandroid/util/TypedValue;ILb8;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error loading font "

    .line 10
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ly95;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextAppearance"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    iput-boolean v7, p0, Ly95;->m:Z

    const/4 p1, -0x3

    .line 12
    invoke-virtual {p2, p1}, Laa5;->a(I)V

    goto :goto_0

    .line 13
    :catch_1
    iput-boolean v7, p0, Ly95;->m:Z

    .line 14
    invoke-virtual {p2, v7}, Laa5;->a(I)V

    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/text/TextPaint;Laa5;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ly95;->a()V

    .line 2
    iget-object v0, p0, Ly95;->n:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p0, p2, v0}, Ly95;->d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 4
    new-instance v0, Lz95;

    invoke-direct {v0, p0, p2, p3}, Lz95;-><init>(Ly95;Landroid/text/TextPaint;Laa5;)V

    invoke-virtual {p0, p1, v0}, Ly95;->b(Landroid/content/Context;Laa5;)V

    .line 5
    iget-object p1, p0, Ly95;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 7
    :goto_0
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 8
    iget p1, p0, Ly95;->h:F

    iget p3, p0, Ly95;->f:F

    iget v0, p0, Ly95;->g:F

    iget-object v1, p0, Ly95;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 9
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 10
    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget v0, p0, Ly95;->d:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    not-int p2, p2

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 4
    :goto_1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 5
    iget p2, p0, Ly95;->k:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 6
    iget-boolean p2, p0, Ly95;->i:Z

    if-eqz p2, :cond_2

    .line 7
    iget p2, p0, Ly95;->j:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_2
    return-void
.end method
