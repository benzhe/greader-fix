.class public final Luy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lbg4;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lbg4;)V
    .locals 0

    iput-object p1, p0, Luy4;->f:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Luy4;->e:Lbg4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Luy4;->f:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v0

    iget-object v1, p0, Luy4;->e:Lbg4;

    .line 2
    invoke-virtual {v0}, Lyv4;->d()V

    .line 3
    invoke-virtual {v0}, Lww4;->f()V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v2

    new-instance v3, Lm05;

    .line 5
    invoke-direct {v3, v0, v2, v1}, Lm05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;Lbg4;)V

    invoke-virtual {v0, v3}, Lh15;->t(Ljava/lang/Runnable;)V

    return-void
.end method
