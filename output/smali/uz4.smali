.class public final Luz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lbg4;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzas;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lbg4;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luz4;->h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Luz4;->e:Lbg4;

    iput-object p3, p0, Luz4;->f:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p4, p0, Luz4;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Luz4;->h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v0

    iget-object v1, p0, Luz4;->e:Lbg4;

    iget-object v2, p0, Luz4;->f:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, p0, Luz4;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lyv4;->d()V

    .line 3
    invoke-virtual {v0}, Lww4;->f()V

    iget-object v4, v0, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v4}, Lrx4;->t()Lp25;

    move-result-object v4

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v5, Lgy;->b:Lgy;

    .line 7
    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 8
    iget-object v4, v4, Lrx4;->a:Landroid/content/Context;

    const v6, 0xbdfcb8

    .line 9
    invoke-virtual {v5, v4, v6}, Lgy;->d(Landroid/content/Context;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 12
    iget-object v2, v2, Lqw4;->i:Low4;

    const-string v3, "Not bundling data. Service unavailable or out of date"

    .line 13
    invoke-virtual {v2, v3}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 14
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 15
    invoke-virtual {v0, v1, v2}, Lp25;->S(Lbg4;[B)V

    goto :goto_0

    :cond_0
    new-instance v4, Lr05;

    .line 16
    invoke-direct {v4, v0, v2, v3, v1}, Lr05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;Lbg4;)V

    invoke-virtual {v0, v4}, Lh15;->t(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
