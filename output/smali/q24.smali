.class public final Lq24;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lq34;


# direct methods
.method public constructor <init>(Lq34;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq24;->j:Lq34;

    iput-object p2, p0, Lq24;->i:Ljava/lang/String;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lg34;-><init>(Lq34;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lq24;->j:Lq34;

    .line 1
    iget-object v0, v0, Lq34;->i:Lyf4;

    .line 2
    iget-object v1, p0, Lq24;->i:Ljava/lang/String;

    iget-wide v2, p0, Lg34;->f:J

    invoke-interface {v0, v1, v2, v3}, Lyf4;->beginAdUnitExposure(Ljava/lang/String;J)V

    return-void
.end method
