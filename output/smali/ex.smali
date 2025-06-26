.class public final Lex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lcom/google/android/gms/ads/internal/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lex;->f:Lcom/google/android/gms/ads/internal/zzf;

    iput-boolean p2, p0, Lex;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    :try_start_0
    iget-object v2, p0, Lex;->f:Lcom/google/android/gms/ads/internal/zzf;

    .line 3
    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzf;->p:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzf;->n:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 7
    :goto_0
    iget-boolean v4, p0, Lex;->e:Z

    .line 8
    invoke-static {v3, v2, v4}, Lrn2;->b(Ljava/lang/String;Landroid/content/Context;Z)Lrn2;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lrn2;->d()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 10
    iget-object v3, p0, Lex;->f:Lcom/google/android/gms/ads/internal/zzf;

    .line 11
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzf;->l:Lpq2;

    const/16 v4, 0x7eb

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 13
    invoke-virtual {v3, v4, v5, v6, v2}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    return-void
.end method
