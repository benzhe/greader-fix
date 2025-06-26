.class public final La00;
.super Lyz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyz<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcz;Lf45;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz<",
            "*>;",
            "Lf45<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p2}, Lyz;-><init>(ILf45;)V

    .line 2
    iput-object p1, p0, La00;->b:Lcz;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lez;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lzy$a;)[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzy$a<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lzy$a;->k:Ljava/util/Map;

    .line 2
    iget-object v0, p0, La00;->b:Lcz;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrz;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    throw v0
.end method

.method public final g(Lzy$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzy$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lzy$a;->k:Ljava/util/Map;

    .line 2
    iget-object v0, p0, La00;->b:Lcz;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrz;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final h(Lzy$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzy$a<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lzy$a;->k:Ljava/util/Map;

    .line 2
    iget-object v0, p0, La00;->b:Lcz;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrz;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lyz;->a:Lf45;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lf45;->b(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
