.class public final Ly24;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lq34;


# direct methods
.method public constructor <init>(Lq34;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ly24;->k:Lq34;

    iput-object p2, p0, Ly24;->i:Ljava/lang/String;

    iput-object p3, p0, Ly24;->j:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lg34;-><init>(Lq34;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Ly24;->k:Lq34;

    .line 1
    iget-object v1, v0, Lq34;->i:Lyf4;

    const/4 v2, 0x5

    .line 2
    iget-object v3, p0, Ly24;->i:Ljava/lang/String;

    iget-object v0, p0, Ly24;->j:Ljava/lang/Object;

    .line 3
    new-instance v4, Ly20;

    invoke-direct {v4, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v5, Ly20;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    new-instance v6, Ly20;

    invoke-direct {v6, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-interface/range {v1 .. v6}, Lyf4;->logHealthData(ILjava/lang/String;Lx20;Lx20;Lx20;)V

    return-void
.end method
