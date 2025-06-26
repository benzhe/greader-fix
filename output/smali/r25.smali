.class public final Lr25;
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

    iput-object p1, p0, Lr25;->f:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lr25;->e:Lbg4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr25;->f:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    iget-object v1, p0, Lr25;->e:Lbg4;

    iget-object v2, p0, Lr25;->f:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v2}, Lrx4;->f()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lp25;->T(Lbg4;Z)V

    return-void
.end method
