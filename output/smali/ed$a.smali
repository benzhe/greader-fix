.class public Led$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Led;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lad$b;

.field public b:Lbd;


# direct methods
.method public constructor <init>(Lcd;Lad$b;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lgd;->a:Ljava/util/Map;

    .line 3
    instance-of v0, p1, Lbd;

    .line 4
    instance-of v1, p1, Lyc;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v1, p1

    check-cast v1, Lyc;

    check-cast p1, Lbd;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Lyc;Lbd;)V

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    check-cast p1, Lyc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Lyc;Lbd;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    move-object v0, p1

    check-cast v0, Lbd;

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lgd;->c(Ljava/lang/Class;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 10
    sget-object v1, Lgd;->b:Ljava/util/Map;

    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 14
    invoke-static {v0, p1}, Lgd;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lzc;

    move-result-object p1

    .line 15
    new-instance v0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    invoke-direct {v0, p1}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Lzc;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lzc;

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    invoke-static {v3, p1}, Lgd;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lzc;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_4
    new-instance v0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {v0, v1}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Lzc;)V

    goto :goto_1

    .line 20
    :cond_5
    new-instance v0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v0, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    .line 21
    :goto_1
    iput-object v0, p0, Led$a;->b:Lbd;

    .line 22
    iput-object p2, p0, Led$a;->a:Lad$b;

    return-void
.end method


# virtual methods
.method public a(Ldd;Lad$a;)V
    .locals 2

    .line 1
    invoke-static {p2}, Led;->c(Lad$a;)Lad$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Led$a;->a:Lad$b;

    invoke-static {v1, v0}, Led;->e(Lad$b;Lad$b;)Lad$b;

    move-result-object v1

    iput-object v1, p0, Led$a;->a:Lad$b;

    .line 3
    iget-object v1, p0, Led$a;->b:Lbd;

    invoke-interface {v1, p1, p2}, Lbd;->c(Ldd;Lad$a;)V

    .line 4
    iput-object v0, p0, Led$a;->a:Lad$b;

    return-void
.end method
