.class public Lcom/google/android/gms/ads/nativead/MediaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public e:Lcom/google/android/gms/ads/MediaContent;

.field public f:Z

.field public g:Lk70;

.field public h:Landroid/widget/ImageView$ScaleType;

.field public i:Z

.field public j:Ll70;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->i:Z

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/MediaView;->h:Landroid/widget/ImageView$ScaleType;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->j:Ll70;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ll70;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->f:Z

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/MediaView;->e:Lcom/google/android/gms/ads/MediaContent;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->g:Lk70;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lk70;->a(Lcom/google/android/gms/ads/MediaContent;)V

    :cond_0
    return-void
.end method
