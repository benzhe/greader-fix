.class public final Lzy$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwz;
.implements Li00$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lny$f;

.field public final b:Lb00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb00<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lq00;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Lzy;


# direct methods
.method public constructor <init>(Lzy;Lny$f;Lb00;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lny$f;",
            "Lb00<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzy$c;->f:Lzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lzy$c;->c:Lq00;

    .line 3
    iput-object p1, p0, Lzy$c;->d:Ljava/util/Set;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lzy$c;->e:Z

    .line 5
    iput-object p2, p0, Lzy$c;->a:Lny$f;

    .line 6
    iput-object p3, p0, Lzy$c;->b:Lb00;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzy$c;->f:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    new-instance v1, Loz;

    invoke-direct {v1, p0, p1}, Loz;-><init>(Lzy$c;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzy$c;->f:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->k:Ljava/util/Map;

    .line 3
    iget-object v1, p0, Lzy$c;->b:Lb00;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$a;

    .line 4
    iget-object v1, v0, Lzy$a;->q:Lzy;

    .line 5
    iget-object v1, v1, Lzy;->n:Landroid/os/Handler;

    .line 6
    invoke-static {v1}, Lbi;->e(Landroid/os/Handler;)V

    .line 7
    iget-object v1, v0, Lzy$a;->f:Lny$f;

    invoke-interface {v1}, Lny$f;->disconnect()V

    .line 8
    invoke-virtual {v0, p1}, Lzy$a;->g0(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
