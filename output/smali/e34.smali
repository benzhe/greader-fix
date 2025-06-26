.class public final Le34;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Ljava/lang/Long;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Landroid/os/Bundle;

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic o:Lq34;


# direct methods
.method public constructor <init>(Lq34;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    iput-object p1, p0, Le34;->o:Lq34;

    iput-object p2, p0, Le34;->i:Ljava/lang/Long;

    iput-object p3, p0, Le34;->j:Ljava/lang/String;

    iput-object p4, p0, Le34;->k:Ljava/lang/String;

    iput-object p5, p0, Le34;->l:Landroid/os/Bundle;

    iput-boolean p6, p0, Le34;->m:Z

    iput-boolean p7, p0, Le34;->n:Z

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lg34;-><init>(Lq34;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Le34;->i:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lg34;->e:J

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    .line 2
    iget-object v0, p0, Le34;->o:Lq34;

    .line 3
    iget-object v2, v0, Lq34;->i:Lyf4;

    .line 4
    iget-object v3, p0, Le34;->j:Ljava/lang/String;

    iget-object v4, p0, Le34;->k:Ljava/lang/String;

    iget-object v5, p0, Le34;->l:Landroid/os/Bundle;

    iget-boolean v6, p0, Le34;->m:Z

    iget-boolean v7, p0, Le34;->n:Z

    invoke-interface/range {v2 .. v9}, Lyf4;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
