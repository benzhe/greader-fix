.class public final Lt25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lry4;


# instance fields
.field public final a:Leg4;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Leg4;)V
    .locals 0

    iput-object p1, p0, Lt25;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt25;->a:Leg4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lt25;->a:Leg4;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1
    invoke-interface/range {v0 .. v5}, Leg4;->o1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lt25;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 3
    iget-object p2, p2, Lqw4;->i:Low4;

    const-string p3, "Event listener threw exception"

    .line 4
    invoke-virtual {p2, p3, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
