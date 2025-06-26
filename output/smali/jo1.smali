.class public final Ljo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkb0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:La90;

.field public final b:Lio1;

.field public final c:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Lco1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldk1;Lwj1;Lio1;Lxa3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldk1;",
            "Lwj1;",
            "Lio1;",
            "Lxa3<",
            "Lco1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Lwj1;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ldk1;->a(Ljava/lang/String;)La90;

    move-result-object p1

    iput-object p1, p0, Ljo1;->a:La90;

    .line 3
    iput-object p3, p0, Ljo1;->b:Lio1;

    .line 4
    iput-object p4, p0, Ljo1;->c:Lxa3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    :try_start_0
    iget-object p2, p0, Ljo1;->a:La90;

    iget-object v0, p0, Ljo1;->c:Lxa3;

    invoke-interface {v0}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq80;

    invoke-interface {p2, v0, p1}, La90;->Y(Lq80;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
