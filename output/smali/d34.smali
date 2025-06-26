.class public final Ld34;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lh34;

.field public final synthetic j:Lq34;


# direct methods
.method public constructor <init>(Lq34;Lh34;)V
    .locals 0

    iput-object p1, p0, Ld34;->j:Lq34;

    iput-object p2, p0, Ld34;->i:Lh34;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lg34;-><init>(Lq34;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Ld34;->j:Lq34;

    .line 1
    iget-object v0, v0, Lq34;->i:Lyf4;

    .line 2
    iget-object v1, p0, Ld34;->i:Lh34;

    invoke-interface {v0, v1}, Lyf4;->registerOnMeasurementEventListener(Leg4;)V

    return-void
.end method
