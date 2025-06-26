.class public final Lf34;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Z

.field public final synthetic m:Lq34;


# direct methods
.method public constructor <init>(Lq34;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lf34;->m:Lq34;

    iput-object p2, p0, Lf34;->i:Ljava/lang/String;

    iput-object p3, p0, Lf34;->j:Ljava/lang/String;

    iput-object p4, p0, Lf34;->k:Ljava/lang/Object;

    iput-boolean p5, p0, Lf34;->l:Z

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lg34;-><init>(Lq34;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lf34;->m:Lq34;

    .line 1
    iget-object v1, v0, Lq34;->i:Lyf4;

    .line 2
    iget-object v2, p0, Lf34;->i:Ljava/lang/String;

    iget-object v3, p0, Lf34;->j:Ljava/lang/String;

    iget-object v0, p0, Lf34;->k:Ljava/lang/Object;

    .line 3
    new-instance v4, Ly20;

    invoke-direct {v4, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-boolean v5, p0, Lf34;->l:Z

    iget-wide v6, p0, Lg34;->e:J

    .line 5
    invoke-interface/range {v1 .. v7}, Lyf4;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lx20;ZJ)V

    return-void
.end method
