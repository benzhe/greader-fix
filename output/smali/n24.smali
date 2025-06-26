.class public final Ln24;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Landroid/app/Activity;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lq34;


# direct methods
.method public constructor <init>(Lq34;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln24;->l:Lq34;

    iput-object p2, p0, Ln24;->i:Landroid/app/Activity;

    iput-object p3, p0, Ln24;->j:Ljava/lang/String;

    iput-object p4, p0, Ln24;->k:Ljava/lang/String;

    const/4 p2, 0x1

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

    iget-object v0, p0, Ln24;->l:Lq34;

    .line 1
    iget-object v1, v0, Lq34;->i:Lyf4;

    .line 2
    iget-object v0, p0, Ln24;->i:Landroid/app/Activity;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object v3, p0, Ln24;->j:Ljava/lang/String;

    iget-object v4, p0, Ln24;->k:Ljava/lang/String;

    iget-wide v5, p0, Lg34;->e:J

    .line 5
    invoke-interface/range {v1 .. v6}, Lyf4;->setCurrentScreen(Lx20;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
