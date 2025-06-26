.class public final Lcu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lrt0;


# direct methods
.method public constructor <init>(Lrt0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcu0;->e:Lrt0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcu0;->e:Lrt0;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcb;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->t:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->f:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbcb;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->s:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v4

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbcb;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzbcb;->u:Z

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyz()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2e

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Spinner frame grab took "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzbcb;->i:J

    cmp-long v1, v6, v3

    if-lez v1, :cond_4

    const-string v1, "Spinner frame grab crossed jank threshold! Suspending spinner."

    .line 13
    invoke-static {v1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 14
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbcb;->n:Z

    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcb;->s:Landroid/graphics/Bitmap;

    .line 16
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcb;->g:Lo50;

    if-eqz v0, :cond_4

    .line 17
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinner_jank"

    .line 18
    invoke-virtual {v0, v2, v1}, Lo50;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
