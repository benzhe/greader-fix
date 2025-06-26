.class public final Lcom/google/android/gms/ads/internal/overlay/zzr;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final e:Landroid/widget/ImageButton;

.field public final f:Lcom/google/android/gms/ads/internal/overlay/zzab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzab;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzr;->f:Lcom/google/android/gms/ads/internal/overlay/zzab;

    .line 3
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance p3, Landroid/widget/ImageButton;

    invoke-direct {p3, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzr;->e:Landroid/widget/ImageButton;

    const v0, 0x1080017

    .line 5
    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->a:Lzr0;

    .line 9
    iget v1, p2, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingLeft:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v2, v1}, Lzr0;->a(Landroid/util/DisplayMetrics;I)I

    move-result v1

    .line 11
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->a:Lzr0;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v2, v0}, Lzr0;->a(Landroid/util/DisplayMetrics;I)I

    move-result v0

    .line 13
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->a:Lzr0;

    .line 14
    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingRight:I

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v3, v2}, Lzr0;->a(Landroid/util/DisplayMetrics;I)I

    move-result v2

    .line 16
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->a:Lzr0;

    .line 17
    iget v3, p2, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingBottom:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v4, v3}, Lzr0;->a(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 19
    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const-string v0, "Interstitial close button"

    .line 20
    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 21
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->a:Lzr0;

    .line 23
    iget v1, p2, Lcom/google/android/gms/ads/internal/overlay/zzq;->size:I

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingLeft:I

    add-int/2addr v1, v2

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingRight:I

    add-int/2addr v1, v2

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v2, v1}, Lzr0;->a(Landroid/util/DisplayMetrics;I)I

    move-result v1

    .line 25
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->a:Lzr0;

    .line 26
    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzq;->size:I

    iget p2, p2, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingBottom:I

    add-int/2addr v2, p2

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p1, v2}, Lzr0;->a(Landroid/util/DisplayMetrics;I)I

    move-result p1

    const/16 p2, 0x11

    .line 28
    invoke-direct {v0, v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 29
    invoke-virtual {p0, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzr;->f:Lcom/google/android/gms/ads/internal/overlay/zzab;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzwg()V

    :cond_0
    return-void
.end method

.method public final zzap(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzr;->e:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzr;->e:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
