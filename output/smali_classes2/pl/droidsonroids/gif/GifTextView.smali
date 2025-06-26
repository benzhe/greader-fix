.class public Lpl/droidsonroids/gif/GifTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p2, p1, p1}, Lpl/droidsonroids/gif/GifTextView;->b(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p2, p3, p1}, Lpl/droidsonroids/gif/GifTextView;->b(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    new-instance v1, Lr78;

    invoke-direct {v1, v0, p1}, Lr78;-><init>(Landroid/content/res/Resources;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 4
    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/util/AttributeSet;II)V
    .locals 9

    if-eqz p1, :cond_4

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "drawableLeft"

    const/4 v2, 0x0

    .line 1
    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v3, "drawableTop"

    .line 2
    invoke-interface {p1, v0, v3, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "drawableRight"

    .line 3
    invoke-interface {p1, v0, v4, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "drawableBottom"

    .line 4
    invoke-interface {p1, v0, v5, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v5}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "drawableStart"

    .line 5
    invoke-interface {p1, v0, v6, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v7, "drawableEnd"

    .line 6
    invoke-interface {p1, v0, v7, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v8

    if-nez v8, :cond_1

    if-nez v6, :cond_0

    move-object v6, v1

    :cond_0
    if-nez v7, :cond_3

    move-object v7, v4

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    move-object v6, v4

    :cond_2
    if-nez v7, :cond_3

    move-object v7, v1

    .line 8
    :cond_3
    :goto_0
    invoke-virtual {p0, v6, v3, v7, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string v1, "background"

    .line 10
    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lu78;->c(Landroid/view/View;Landroid/util/AttributeSet;II)Z

    move-result p1

    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifTextView;->e:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    check-cast p1, Lpl/droidsonroids/gif/GifViewSavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    invoke-virtual {p1, v2, v1}, Lpl/droidsonroids/gif/GifViewSavedState;->a(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x1

    .line 5
    aget-object v3, v0, v2

    invoke-virtual {p1, v3, v2}, Lpl/droidsonroids/gif/GifViewSavedState;->a(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x2

    .line 6
    aget-object v3, v0, v2

    invoke-virtual {p1, v3, v2}, Lpl/droidsonroids/gif/GifViewSavedState;->a(Landroid/graphics/drawable/Drawable;I)V

    const/4 v3, 0x3

    .line 7
    aget-object v0, v0, v3

    invoke-virtual {p1, v0, v3}, Lpl/droidsonroids/gif/GifViewSavedState;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    aget-object v1, v0, v1

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lpl/droidsonroids/gif/GifViewSavedState;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 10
    aget-object v0, v0, v2

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lpl/droidsonroids/gif/GifViewSavedState;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lpl/droidsonroids/gif/GifViewSavedState;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 1
    iget-boolean v1, p0, Lpl/droidsonroids/gif/GifTextView;->e:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x4

    .line 5
    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const/4 v3, 0x2

    .line 6
    aget-object v1, v1, v3

    aput-object v1, v0, v2

    const/4 v1, 0x6

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 8
    :cond_0
    new-instance v1, Lpl/droidsonroids/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lpl/droidsonroids/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p2}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p3}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p4}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p2}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p3}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p4}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFreezesAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifTextView;->e:Z

    return-void
.end method
