.class public Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxf5;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$lambda$0(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;Ltf5;)Llz5;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;->buildFirebaseInAppMessagingUI(Ltf5;)Llz5;

    move-result-object p0

    return-object p0
.end method

.method private buildFirebaseInAppMessagingUI(Ltf5;)Llz5;
    .locals 14

    .line 1
    invoke-static {}, Lpe5;->b()Lpe5;

    move-result-object v0

    .line 2
    const-class v1, Lty5;

    invoke-interface {p1, v1}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lty5;

    .line 3
    invoke-virtual {v0}, Lpe5;->a()V

    .line 4
    iget-object v0, v0, Lpe5;->a:Landroid/content/Context;

    .line 5
    check-cast v0, Landroid/app/Application;

    .line 6
    new-instance v1, Lf16;

    invoke-direct {v1, v0}, Lf16;-><init>(Landroid/app/Application;)V

    .line 7
    const-class v2, Lf16;

    invoke-static {v1, v2}, Lc50;->v(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    new-instance v2, Lj16;

    invoke-direct {v2}, Lj16;-><init>()V

    .line 9
    new-instance v3, Lc16;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lc16;-><init>(Lf16;Lj16;Lc16$a;)V

    .line 10
    new-instance v1, Lh16;

    invoke-direct {v1, p1}, Lh16;-><init>(Lty5;)V

    .line 11
    const-class p1, Lh16;

    invoke-static {v1, p1}, Lc50;->v(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    new-instance p1, Ly16;

    invoke-direct {p1}, Ly16;-><init>()V

    .line 13
    const-class v2, Le16;

    invoke-static {v3, v2}, Lc50;->v(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    new-instance v2, Li16;

    invoke-direct {v2, v1}, Li16;-><init>(Lh16;)V

    .line 15
    sget-object v1, Lrz5;->c:Ljava/lang/Object;

    .line 16
    instance-of v1, v2, Lrz5;

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Lrz5;

    invoke-direct {v1, v2}, Lrz5;-><init>(Ljj7;)V

    move-object v5, v1

    .line 18
    :goto_0
    new-instance v6, Lz06;

    invoke-direct {v6, v3}, Lz06;-><init>(Le16;)V

    .line 19
    new-instance v11, La16;

    invoke-direct {v11, v3}, La16;-><init>(Le16;)V

    .line 20
    sget-object v1, Lh06$a;->a:Lh06;

    .line 21
    instance-of v2, v1, Lrz5;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    new-instance v2, Lrz5;

    invoke-direct {v2, v1}, Lrz5;-><init>(Ljj7;)V

    move-object v1, v2

    .line 23
    :goto_1
    new-instance v2, Lz16;

    invoke-direct {v2, p1, v11, v1}, Lz16;-><init>(Ly16;Ljj7;Ljj7;)V

    .line 24
    instance-of p1, v2, Lrz5;

    if-eqz p1, :cond_2

    goto :goto_2

    .line 25
    :cond_2
    new-instance p1, Lrz5;

    invoke-direct {p1, v2}, Lrz5;-><init>(Ljj7;)V

    move-object v2, p1

    .line 26
    :goto_2
    new-instance p1, Lzz5;

    invoke-direct {p1, v2}, Lzz5;-><init>(Ljj7;)V

    .line 27
    instance-of v1, p1, Lrz5;

    if-eqz v1, :cond_3

    move-object v7, p1

    goto :goto_3

    .line 28
    :cond_3
    new-instance v1, Lrz5;

    invoke-direct {v1, p1}, Lrz5;-><init>(Ljj7;)V

    move-object v7, v1

    .line 29
    :goto_3
    new-instance v10, Lx06;

    invoke-direct {v10, v3}, Lx06;-><init>(Le16;)V

    .line 30
    new-instance v12, Ly06;

    invoke-direct {v12, v3}, Ly06;-><init>(Le16;)V

    .line 31
    sget-object p1, Lxz5$a;->a:Lxz5;

    .line 32
    instance-of v1, p1, Lrz5;

    if-eqz v1, :cond_4

    move-object v13, p1

    goto :goto_4

    .line 33
    :cond_4
    new-instance v1, Lrz5;

    invoke-direct {v1, p1}, Lrz5;-><init>(Ljj7;)V

    move-object v13, v1

    .line 34
    :goto_4
    sget-object v9, Lj06$a;->a:Lj06;

    .line 35
    new-instance p1, Lqz5;

    move-object v4, p1

    move-object v8, v9

    invoke-direct/range {v4 .. v13}, Lqz5;-><init>(Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;)V

    .line 36
    instance-of v1, p1, Lrz5;

    if-eqz v1, :cond_5

    goto :goto_5

    .line 37
    :cond_5
    new-instance v1, Lrz5;

    invoke-direct {v1, p1}, Lrz5;-><init>(Ljj7;)V

    move-object p1, v1

    .line 38
    :goto_5
    invoke-interface {p1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llz5;

    .line 39
    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object p1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsf5<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lsf5;

    .line 1
    const-class v1, Llz5;

    .line 2
    invoke-static {v1}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v1

    const-class v2, Lpe5;

    .line 3
    new-instance v3, Lig5;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lbf5;

    .line 5
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lty5;

    .line 7
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    .line 9
    new-instance v2, Lpz5;

    invoke-direct {v2, p0}, Lpz5;-><init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;)V

    .line 10
    invoke-virtual {v1, v2}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 11
    invoke-virtual {v1}, Lsf5$b;->c()Lsf5$b;

    .line 12
    invoke-virtual {v1}, Lsf5$b;->b()Lsf5;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-fiamd"

    const-string v2, "19.1.3"

    .line 13
    invoke-static {v1, v2}, Ln56;->F(Ljava/lang/String;Ljava/lang/String;)Lsf5;

    move-result-object v1

    aput-object v1, v0, v4

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
