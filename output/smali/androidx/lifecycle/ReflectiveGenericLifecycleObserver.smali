.class public Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbd;


# instance fields
.field public final e:Ljava/lang/Object;

.field public final f:Lxc$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->e:Ljava/lang/Object;

    .line 3
    sget-object v0, Lxc;->c:Lxc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxc;->b(Ljava/lang/Class;)Lxc$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->f:Lxc$a;

    return-void
.end method


# virtual methods
.method public c(Ldd;Lad$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->f:Lxc$a;

    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->e:Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Lxc$a;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1, p2, v1}, Lxc$a;->a(Ljava/util/List;Ldd;Lad$a;Ljava/lang/Object;)V

    .line 3
    iget-object v0, v0, Lxc$a;->a:Ljava/util/Map;

    sget-object v2, Lad$a;->ON_ANY:Lad$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Lxc$a;->a(Ljava/util/List;Ldd;Lad$a;Ljava/lang/Object;)V

    return-void
.end method
