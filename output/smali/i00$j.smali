.class public final Li00$j;
.super Lr00$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public e:Li00;

.field public final f:I


# direct methods
.method public constructor <init>(Li00;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr00$a;-><init>()V

    .line 2
    iput-object p1, p0, Li00$j;->e:Li00;

    .line 3
    iput p2, p0, Li00$j;->f:I

    return-void
.end method


# virtual methods
.method public final g0(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li00$j;->e:Li00;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Li00$j;->e:Li00;

    iget v1, p0, Li00$j;->f:I

    .line 3
    iget-object v2, v0, Li00;->l:Landroid/os/Handler;

    new-instance v3, Li00$k;

    invoke-direct {v3, v0, p1, p2, p3}, Li00$k;-><init>(Li00;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    .line 4
    invoke-virtual {v2, p1, v1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Li00$j;->e:Li00;

    return-void
.end method
