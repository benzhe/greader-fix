.class public final Lx24;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Z

.field public final synthetic l:Ldd4;

.field public final synthetic m:Lq34;


# direct methods
.method public constructor <init>(Lq34;Ljava/lang/String;Ljava/lang/String;ZLdd4;)V
    .locals 0

    iput-object p1, p0, Lx24;->m:Lq34;

    iput-object p2, p0, Lx24;->i:Ljava/lang/String;

    iput-object p3, p0, Lx24;->j:Ljava/lang/String;

    iput-boolean p4, p0, Lx24;->k:Z

    iput-object p5, p0, Lx24;->l:Ldd4;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lg34;-><init>(Lq34;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lx24;->m:Lq34;

    .line 1
    iget-object v0, v0, Lq34;->i:Lyf4;

    .line 2
    iget-object v1, p0, Lx24;->i:Ljava/lang/String;

    iget-object v2, p0, Lx24;->j:Ljava/lang/String;

    iget-boolean v3, p0, Lx24;->k:Z

    iget-object v4, p0, Lx24;->l:Ldd4;

    invoke-interface {v0, v1, v2, v3, v4}, Lyf4;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLbg4;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lx24;->l:Ldd4;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Ldd4;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
