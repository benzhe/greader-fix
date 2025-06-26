.class public final Lq25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lbg4;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lbg4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq25;->h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lq25;->e:Lbg4;

    iput-object p3, p0, Lq25;->f:Ljava/lang/String;

    iput-object p4, p0, Lq25;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lq25;->h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v0

    iget-object v6, p0, Lq25;->e:Lbg4;

    iget-object v3, p0, Lq25;->f:Ljava/lang/String;

    iget-object v4, p0, Lq25;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lyv4;->d()V

    .line 3
    invoke-virtual {v0}, Lww4;->f()V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v5

    new-instance v7, Lz05;

    move-object v1, v7

    move-object v2, v0

    .line 5
    invoke-direct/range {v1 .. v6}, Lz05;-><init>(Lh15;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;Lbg4;)V

    invoke-virtual {v0, v7}, Lh15;->t(Ljava/lang/Runnable;)V

    return-void
.end method
