.class public final Lz16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le27;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly16;

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lg06;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly16;Ljj7;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly16;",
            "Ljj7<",
            "Landroid/app/Application;",
            ">;",
            "Ljj7<",
            "Lg06;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz16;->a:Ly16;

    .line 3
    iput-object p2, p0, Lz16;->b:Ljj7;

    .line 4
    iput-object p3, p0, Lz16;->c:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lz16;->a:Ly16;

    iget-object v1, p0, Lz16;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lz16;->c:Ljj7;

    invoke-interface {v2}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lg06;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v3, Lx16;

    invoke-direct {v3, v0}, Lx16;-><init>(Ly16;)V

    .line 4
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v7, :cond_0

    .line 7
    new-instance v12, Ld27;

    invoke-direct {v12, v0}, Ld27;-><init>(Lokhttp3/OkHttpClient;)V

    .line 8
    new-instance v6, Ly17;

    invoke-direct {v6, v4}, Ly17;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v10, Lg27;

    invoke-direct {v10}, Lg27;-><init>()V

    .line 10
    sget-object v0, Le27$f;->a:Le27$f;

    .line 11
    new-instance v1, Ll27;

    invoke-direct {v1, v6}, Ll27;-><init>(Lo17;)V

    .line 12
    new-instance v5, Lt17;

    sget-object v11, Le27;->o:Landroid/os/Handler;

    move-object v8, v5

    move-object v9, v4

    move-object v13, v6

    move-object v14, v1

    invoke-direct/range {v8 .. v14}, Lt17;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lu17;Lo17;Ll27;)V

    .line 13
    new-instance v2, Le27;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v2

    move-object v8, v0

    move-object v10, v1

    invoke-direct/range {v3 .. v13}, Le27;-><init>(Landroid/content/Context;Lt17;Lo17;Le27$c;Le27$f;Ljava/util/List;Ll27;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v2

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
