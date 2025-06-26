.class public final Lm24;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ldd4;

.field public final synthetic l:Lq34;


# direct methods
.method public constructor <init>(Lq34;Ljava/lang/String;Ljava/lang/String;Ldd4;)V
    .locals 0

    iput-object p1, p0, Lm24;->l:Lq34;

    iput-object p2, p0, Lm24;->i:Ljava/lang/String;

    iput-object p3, p0, Lm24;->j:Ljava/lang/String;

    iput-object p4, p0, Lm24;->k:Ldd4;

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

    iget-object v0, p0, Lm24;->l:Lq34;

    .line 1
    iget-object v0, v0, Lq34;->i:Lyf4;

    .line 2
    iget-object v1, p0, Lm24;->i:Ljava/lang/String;

    iget-object v2, p0, Lm24;->j:Ljava/lang/String;

    iget-object v3, p0, Lm24;->k:Ldd4;

    invoke-interface {v0, v1, v2, v3}, Lyf4;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lbg4;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lm24;->k:Ldd4;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Ldd4;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
