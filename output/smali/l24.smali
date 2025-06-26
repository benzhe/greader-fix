.class public final Ll24;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Landroid/os/Bundle;

.field public final synthetic l:Lq34;


# direct methods
.method public constructor <init>(Lq34;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Ll24;->l:Lq34;

    iput-object p2, p0, Ll24;->i:Ljava/lang/String;

    iput-object p3, p0, Ll24;->j:Ljava/lang/String;

    iput-object p4, p0, Ll24;->k:Landroid/os/Bundle;

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

    iget-object v0, p0, Ll24;->l:Lq34;

    .line 1
    iget-object v0, v0, Lq34;->i:Lyf4;

    .line 2
    iget-object v1, p0, Ll24;->i:Ljava/lang/String;

    iget-object v2, p0, Ll24;->j:Ljava/lang/String;

    iget-object v3, p0, Ll24;->k:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lyf4;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
